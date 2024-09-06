from transformers import pipeline
import sys
import json

# Load the pre-trained model for sentiment analysis
mood_analyzer = pipeline('sentiment-analysis')

# Get the input text from command-line arguments
input_text = sys.argv[1]

# Perform sentiment analysis on the input text
analysis_result = mood_analyzer(input_text)

# Output the analysis result as a JSON string
print(json.dumps(analysis_result))
