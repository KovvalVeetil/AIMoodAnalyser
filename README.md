# AIMoodAnalyser
This project creates a Ruby on Rails application that provides a web API for sentiment analysis. Sentiment analysis is a technique used to determine the emotional tone behind a series of words. The application leverages a pre-trained AI model to analyze text and return whether the sentiment is positive, negative, or neutral.

# Features
Sentiment Analysis: Analyze the sentiment of input text using a pre-trained AI model.

API Endpoint: Simple and intuitive API endpoint for easy integration.

Open Source: Free and open-source project that can be extended or customized.

# Getting Started
Prerequisites
Ruby: Ensure you have Ruby 2.7 or later installed.
Rails: The project uses Rails 6.1 or later.
PostgreSQL: The default database is PostgreSQL. Ensure it's installed and running.

# Installation
Clone the Repository

```bash
git clone https://github.com/yourusername/sentimentpulse.git
cd sentimentpulse
```
Install Dependencies

Ensure you have Bundler installed, then run:

```bash
bundle install
```
```bash
pip install transformers torch
bin/rails db:create
bin/rails db:migrate
```

Create a .env file in the root directory and add your Hugging Face API key:

```bash
HUGGINGFACE_API_KEY=your_api_key_here
```
Set Up the Database

Create and migrate the database:

```bash
rails db:create
rails db:migrate
Start the Rails Server
```

```bash
rails server
The API will be available at http://localhost:3000.
```

API Endpoints
Analyze Sentiment
Endpoint: /api/v1/sentiments/analyze

Method: POST

Description: Analyzes the sentiment of the provided text and returns the result.

Request
```bash
Content-Type: application/json
Body:

{
  "text": "I love programming!"
}
Response

Content-Type: application/json
Success Response:

{
  "sentiment": "POSITIVE"
}
Error Response:

{
  "error": "Unable to analyze sentiment"
}
```

Flow Diagrams
1. API Request Flow

```bash
graph TD
    A[User Request] --> B[API Endpoint]
    B --> C[Sentiment Analysis]
    C --> D[Response]
    D --> E[User Receives Sentiment]
```
