import os
from flask import Flask
app = Flask(__name__)

@app.route("/")
def main():
  return "Sprint 24 demo app!"

@app.route("/hello")
def hello():
  return "updated"

if __name__ == "__main__":
  app.run(host="0.0.0.0", port=8080)
