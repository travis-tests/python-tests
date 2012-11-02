clean:
	git clean -Xfd

install:
	pip install --quiet --requirement=requirements.tests.txt --use-mirrors
	python setup.py --quiet install

travis: test

setup:
ifeq ($(TRAVIS_PYTHON_VERSION), 3.3)
	sudo pip install virtualenv==1.8.2
	sudo apt-get update && sudo apt-get -y python3.3
	virtualenv -p python3.3 ~/virtualenv/python3.3 && source ~/virtualenv/python3.3/bin/activate	
else
	sudo aptitude update
endif

test:
	pep8 --ignore=E128,E501 travis
	python setup.py --quiet nosetests
