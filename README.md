Vanna.AI Project
Vanna.AI is a natural language processing (NLP) tool leveraging Retrieval-Augmented Generation (RAG) techniques to interact with SQL databases. It allows users to ask natural language questions, automatically generating SQL queries to extract data from predefined databases. This project utilizes vanna.openai, AzureOpenAI, and VannaDB_VectorStore components to seamlessly bridge NLP and database querying.

Project Setup and Installation
Prerequisites
Python 3.7 or higher
Install required packages using pip install -r requirements.txt
A PostgreSQL database and access credentials
API keys for Azure OpenAI and Vanna.ai services (stored in an .env file)
Environment Setup
Create an .env file in the root directory to store environment variables:

plaintext
Kodu kopyala
MY_VANNA_MODEL=<YOUR_VANNA_MODEL_NAME>
MY_VANNA_API_KEY=<YOUR_VANNA_API_KEY>
API_KEY=<YOUR_AZURE_OPENAI_API_KEY>
BASE_URL=<YOUR_AZURE_OPENAI_BASE_URL>
API_VERSION=<YOUR_AZURE_OPENAI_API_VERSION>
Project Files
main.py: The main script that configures and initializes the Vanna model, connects to PostgreSQL, and serves the app.
ddl.sql: SQL file containing the Data Definition Language (DDL) for initializing and training on your database.
queries folder: Directory of SQL queries that Vanna.AI uses for training.
Key Features
NLP Query Translation to SQL:

Translates natural language queries into SQL commands, allowing easy database access without SQL knowledge.
Model Training on SQL DDL and Queries:

Vanna.AI trains on the database schema and SQL queries stored in ddl.sql and the queries directory, allowing it to understand the database structure and common query patterns.
SQL Query Execution:

Vanna.AI executes generated SQL queries, with results returned as structured data for further analysis or visualization.
Usage
Running the Project
bash
Kodu kopyala
python main.py
This script:

Initializes and configures the Vanna.AI model, loading SQL DDL and training on all queries in the specified directory.
Connects to a PostgreSQL database using credentials from the .env file.
Runs a Flask application that processes natural language queries.
Example Query
python
Kodu kopyala
vn.ask("What was the weather in Australia during January?")
This would automatically generate a SQL query to pull relevant weather data, handling NaN values as NULL entries for accurate processing.

Flask API
You can interact with the application via the API endpoint served by Flask to submit queries and receive database results.

Notes
RAG System: Vanna.AI integrates RAG techniques, enhancing model responses with SQL knowledge to answer questions effectively.
Data Handling: In tables like weather_aus, any 'NaN' values are automatically converted to NULL to signify missing data.
Future Enhancements
Extend NLP query capabilities to work across multiple database connections.
Add support for more natural language processing pipelines to improve accuracy and handling of complex queries.
