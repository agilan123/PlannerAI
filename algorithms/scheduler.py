import numpy as np
import pandas as pd
from datetime import datetime, timedelta

tasks_df = pd.DataFrame(columns= ["Query", "Name", "Description", "Priority", "Duration", "Scheduled"])
now = datetime.now()
start_of_week = now - timedelta(days=now.weekday())
availability = {}
for i in range(7):
    current_date = start_of_week + timedelta(days=i)
    for hour in range(24):
        formatted_date = current_date.strftime("%A, %H:00")
        availability[formatted_date] = False  # You can associate any value you want here


def generate_task(task_query):
    #LLM to take text query to task name and description
    name = ""
    desc = ""
    
    #run through model
    priority = 0
    duration = 0

    #text scraper goes here
    datetime = None
    
    scheduled = False
    return [task_query, name, desc, priority, duration, datetime, scheduled]

def add_task(task):
    temp = tasks_df.copy()
    temp.loc[len(temp.index)] = task
    temp.sort_values("Priority")
    scheduler(temp) #Must catch if the timed events do not fit in available times

    tasks_df = temp

def scheduler(tasks):
    have_start_time = tasks[tasks["DateTime"] != np.nan]

    #Put into calendar and mark respective times unavailable
    #Have check for time not fittting into slot and have it return a message and NOT UPDATE THE CALENDAR
    
    to_schedule = tasks[tasks["Scheduled"] == False]
    #iterate through times and work with the available ones
    #calculate continuous time available and schedule first task (already sorted by priority) that fits

    