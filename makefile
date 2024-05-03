# template for promptflow project

venv:
	python -m venv ./venv

sh:
	source venv/bin/activate

i:
	pip install -r requirements.txt

freeze:
	pip freeze > requirements.txt
