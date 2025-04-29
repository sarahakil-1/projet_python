.PHONY: init run test build clean

# Initialisation de l'environnement (installation des dépendances)
init:
	@echo "Installation des dépendances..."
	pip install -r requirements.txt

# Lancer l'application Flask en local
run:
	@echo "Lancement de l’application Flask..."
	python app.py

# Exécution des tests unitaires
test:
	@echo "Exécution des tests unitaires..."
	python test.py

# Construction de l'image Docker
build:
	@echo "Construction de l’image Docker..."
	docker build -t health-calculator-app .

# Nettoyage des fichiers temporaires
clean:
	rm -rf __pycache__ *.pyc
