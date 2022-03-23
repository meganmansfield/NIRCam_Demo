#!/bin/bash

# doing Eureka set up!
mkdir crds_cache
git clone https://github.com/kevin218/Eureka.git
pip install -r eureka_freeze.txt

# installing Eureka at the frozen version
cd Eureka
git checkout 57cb0f1a576dfbbef9ba616b7a13a28c42efb876
pip install .

cd ../