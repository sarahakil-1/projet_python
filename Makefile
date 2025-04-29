.PHONY: init run test build clean

init:
	@echo "Installation des dépendances..."
	pip install -r requirements.txt

run:
	@echo "Lancement de l’application Flask..."
	python app.py

test:
	@echo "Exécution des tests unitaires..."
	python test.py

build:
	@echo "Construction de l’image Docker..."
	docker build -t health-calculator-app .

clean:
	rm -rf __pycache__ *.pyc
