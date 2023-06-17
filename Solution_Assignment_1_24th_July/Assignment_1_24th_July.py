import json

from pymongo.mongo_client import MongoClient
uri = "mongodb+srv://myrealprofession:pAHyfaR13T3bwGUi@cluster0.iicuuee.mongodb.net/?retryWrites=true&w=majority"
# Create a new client and connect to the server
client = MongoClient(uri)

with open('C:/Users/hp/Assignments/Assignment_1_24th_July/Data_Set_Cleaning/Attribute DataSet_Final2.json') as file:
    json_file= json.load(file)


database= client["Assignment_1_24th_July"]
collection= database["Task"]

if isinstance(json_file, list):
    collection.insert_many(json_file)
else:
    collection.insert_one(json_file)

data= collection.find()
for i in data:
    print (i)