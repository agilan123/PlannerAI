from flask import Flask, request, jsonify, render_template
import json
from calendar import GlobalCalendar  # Assuming GlobalCalendar is in 'your_calendar_module.py'
from script import predict  # Assuming predict is in 'your_ml_module.py'

app = Flask(__name__)

# Initialize your global calendar and events structure
calendar_data = [[0 for _ in range(24)] for _ in range(7)]  # 7 days, 24 hours
events_data = {}
global_calendar = GlobalCalendar(calendar_data, events_data)

@app.route('/')
def index():
    # Render your HTML page
    return render_template('index.html')

@app.route('/submit-queries', methods=['POST'])
def submit_queries():
    data = request.get_json()
    results = []

    for item in data:
        query_title_split = item.split(':')
        if len(query_title_split) == 2:
            query, title = query_title_split
            priority, intensity = predict(query)  # Use your ML model to predict priority and intensity
            global_calendar.add_event(title, query, priority, intensity)
            results.append({'title': title, 'query': query, 'priority': priority, 'intensity': intensity})

    # Optionally, save your calendar or events state here

    return jsonify(results)

if __name__ == '__main__':
    app.run(debug=True)
