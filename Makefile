setup:
	python3 -m venv ~/.udacity-devops

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

inastall_locust:
	pip install locust

test:
	# ensure that pytest and requests is installed before testing
	pip install pytest requests
	python -m pytest -vv test_prediction.py
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb
	#sh make_predict_azure_app.sh

lint:
	#hadolint Dockerfile #uncomment to explore linting Dockerfiles
	pip install pylint
	pylint --disable=R,C,W1203 app.py

all: install inastall_locust lint test
