test:
	pytest

install:
	python -m pip install -e .

install-test:
	python -m pip install -e ".[test]"
	python -m pip install -e ".[all]"

pypi:
	python -m build
	twine upload dist/*

clean:
	rm -rf **/.ipynb_checkpoints **/.pytest_cache **/__pycache__ **/**/__pycache__ .ipynb_checkpoints .pytest_cache

check: test clean
