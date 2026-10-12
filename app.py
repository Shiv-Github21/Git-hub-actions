from flask import Flask

# Initialize the Flask application
app = Flask(__name__)

# Define the route for the homepage
@app.route('/')
def hello_world():
    return 'Hello, World!'

# Run the application if the script is executed directly
if __name__ == '__main__':
    app.run(debug=True)
