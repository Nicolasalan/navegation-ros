#!/usr/bin/env python3

# o setup.py é um arquivo Python que geralmente informa que o módulo/pacote 
# que o contém foi empacotado e distribuído com Distutils, que é a ferramenta 
# padrão para distribuição de módulos Python.

from distutils.core import setup
from catkin_pkg.python_setup import generate_distutils_setup

# fetch values from package.xml
setup_args = generate_distutils_setup(
    packages=['robot_control'],
    package_dir={'': 'src'},
)

setup(**setup_args)