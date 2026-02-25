import asyncio
from flask import Flask

# 🔧 Python 3.10+ event loop fix
asyncio.set_event_loop(asyncio.new_event_loop())

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "TechVJ"

if __name__ == "__main__":
    # Render uses gunicorn, local run ke liye
    app.run(host="0.0.0.0", port=8080)
