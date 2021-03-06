check:
	black --check .
	isort --check .
	flake8
	mypy .

dev:
	pip install -q -U pip~=21.0.0 pip-tools~=5.5.0
	pip-sync requirements.txt

fix:
	black .
	isort .
	flake8
	mypy .

pip:
	pip install -q -U pip~=21.0.0 pip-tools~=5.5.0
	pip-compile -q -U -o requirements.txt requirements.in
