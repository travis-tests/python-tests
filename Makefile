clean:
	git clean -Xfd

install:
	pip install --quiet --requirement=requirements.tests.txt --use-mirrors
	python setup.py --quiet install

travis: test

setup:
ifeq ($(TRAVIS_PYTHON_VERSION), 3.3)
	sudo aptitude install --quiet --quiet python3.3
else
	sudo aptitude update
endif

test:
	pep8 --ignore=E128,E501 travis
	python setup.py --quiet nosetests
