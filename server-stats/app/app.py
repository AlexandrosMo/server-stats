from flask import Flask
import os
from dotenv import load_dotenv

load_dotenv() 

app = Flask(__name__)

PORT = int(os.getenv("PORT", 8081))  

@app.route('/')
def home():
    return "Hello from server-stats API!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=PORT)
