#!/bin/bash

# doing Eureka set up!
mkdir crds_cache
git clone https://github.com/kevin218/Eureka.git
pip install -r eureka_freeze.txt

# installing Eureka at the frozen version
cd Eureka
git checkout cf9922e967a6bc23418152ab53dae2dcc5232b30
pip install .

cd ../

conda install jupyter