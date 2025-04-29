from flask import Flask, request, jsonify, render_template
from health_utils import calculate_bmi, calculate_bmr

app = Flask(__name__)

# Page d'accueil avec interface web
@app.route('/')
def home():
    return render_template('index.html')

# Route API pour calculer l'IMC (BMI)
@app.route('/bmi', methods=['POST'])
def bmi():
    data = request.get_json()
    height = data.get("height")
    weight = data.get("weight")
    bmi_value = calculate_bmi(height, weight)
    return jsonify({"bmi": round(bmi_value, 2)})

# Route API pour calculer le BMR
@app.route('/bmr', methods=['POST'])
def bmr():
    data = request.get_json()
    height = data.get("height")
    weight = data.get("weight")
    age = data.get("age")
    gender = data.get("gender")
    bmr_value = calculate_bmr(height, weight, age, gender)
    return jsonify({"bmr": round(bmr_value, 2)})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
