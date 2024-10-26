from vanna.openai import OpenAI_Chat
from openai import AzureOpenAI
from vanna.vannadb import VannaDB_VectorStore
from dotenv import load_dotenv
import os
from vanna.flask import VannaFlaskApp
load_dotenv()

# from vanna.local import LocalContext_OpenAI
# vn = LocalContext_OpenAI()
vannaModel = os.getenv('MY_VANNA_MODEL')
vannaApiKey = os.getenv('MY_VANNA_API_KEY')
azureOpenAIApiKey = os.getenv('API_KEY')
azureOpenAIBaseUrl = os.getenv('BASE_URL')
azureOpenAIVersion = os.getenv('API_VERSION')


class MyVanna(VannaDB_VectorStore, OpenAI_Chat):
    def __init__(self, config=None):
        MY_VANNA_MODEL = vannaModel  # Vanna.ai model name
        MY_VANNA_API_KEY = vannaApiKey  # Vanna.ai API key
        VannaDB_VectorStore.__init__(self, vanna_model=MY_VANNA_MODEL, vanna_api_key=MY_VANNA_API_KEY, config=config)
        openai_client = AzureOpenAI(
            api_key=azureOpenAIApiKey,  # Azure OpenAI API key
            base_url=azureOpenAIBaseUrl,  # Azure OpenAI endpoint URL
            api_version=azureOpenAIVersion  # Azure OpenAI version
        )
        OpenAI_Chat.__init__(self, client=openai_client, config=config)
vn = MyVanna(config={vannaModel: 'gpt-4o-1'})
directory_path = '/Users/berdn90s/vannaAI/ddl/queries'
ddl_path = '/Users/berdn90s/vannaAI/ddl/ddl.sql'
'''
def read_sql(file_path):
    with open(file_path, 'r') as file:
        return file.read()


ddl_query = read_sql(ddl_path)
vn.train(ddl=ddl_query)
vn.train(documentation= "In this weather_aus table, any occurrence of the 'NaN' within columns should be interpreted as a NULL value, signifying missing data. When dealing with numerical values you should add query for example 'WHERE [column name] != 'NaN' ")

# Her sql querysi icin ddli tekrar train etmek?
# Her sql querysi icin ddli tekrar train etmek?
for filename in os.listdir(directory_path):
    if filename.endswith('.sql'):
        file_path = os.path.join(directory_path, filename)
        sql_query = read_sql(file_path)
        print(f"Training on query from {filename}")
        vn.train(sql=sql_query)
'''
print("Training completed for all SQL queries and DDL.")

import pandas as pd

vn.connect_to_postgres(host='localhost', dbname='vanna_rag', user='berdn70s', password='123123', port='5432')
app = VannaFlaskApp(vn, allow_llm_to_see_data=True)
app.run()











