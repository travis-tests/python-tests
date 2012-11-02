from setuptools import find_packages, setup

setup(
    name='travis-tests',
    version='1.0a1',
    author='travis-tests',
    packages=find_packages(),
    zip_safe=True,
    test_suite='nose.collector',
    tests_require=open('requirements.tests.txt').read().splitlines(),
    classifiers=[
        'Development Status :: 3 - Alpha',
        'License :: OSI Approved :: MIT License',
        'Operating System :: OS Independent',
        'Programming Language :: Python :: 3.3',
        'Topic :: Software Development :: Libraries :: Python Modules',
    ],
)
