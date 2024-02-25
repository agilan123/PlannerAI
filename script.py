import sys
import pandas as pd
import numpy as np
import tensorflow as tf
from tensorflow.keras.preprocessing.text import Tokenizer
from tensorflow.keras.preprocessing.sequence import pad_sequences
from tensorflow.keras.models import load_model

# Function to load models and tokenizer
def load_models_and_tokenizer():
    # Load models
    priority_model_path = 'priority_model.h5'
    intensity_model_path = 'intensity_model.h5'
    priority_model = load_model(priority_model_path)
    intensity_model = load_model(intensity_model_path)

    # Load and fit tokenizer (Assuming the tokenizer setup is saved or can be replicated)
    # For demonstration, re-initializing from script. Ideally, load a pre-fitted tokenizer.
    df = pd.read_csv('Shuffled_ML_training_scheduler.csv')
    tokenizer = Tokenizer(num_words=10000, oov_token="<OOV>")
    tokenizer.fit_on_texts(df['query'].values)

    max_length = max([len(query.split()) for query in df['query'].values])

    return tokenizer, priority_model, intensity_model, max_length

# Predict function
def predict(query, tokenizer, priority_model, intensity_model, max_length):
    sequence = tokenizer.texts_to_sequences([query])
    padded_sequence = pad_sequences(sequence, maxlen=max_length, padding='post')
    priority_prediction = priority_model.predict(padded_sequence)
    predicted_priority = np.argmax(priority_prediction, axis=1)[0]
    intensity_prediction = intensity_model.predict(padded_sequence)
    predicted_intensity = intensity_prediction[0][0]
    return predicted_priority, predicted_intensity

if __name__ == '__main__':
    query = sys.argv[1]
    tokenizer, priority_model, intensity_model, max_length = load_models_and_tokenizer()
    predicted_priority, predicted_intensity = predict(query, tokenizer, priority_model, intensity_model, max_length)
    print(f"{predicted_priority},{predicted_intensity}")
