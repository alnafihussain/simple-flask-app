from flask import Flask, jsonify

app = Flask(__name__)

@app.get("/")
def main():
    return jsonify(app="flask", msg="Hello World!!!!")
