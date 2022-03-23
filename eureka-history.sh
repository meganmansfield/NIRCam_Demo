#!/bin/bash

# download box data to directory
# download test file
# have anaconda
# download eureka-freeze.txt
# all in eureka-test directory

# conda create --no-default-packages -n eureka-test python=3.9
# conda activate eureka-test
# conda env list
# cd eureka-test

mkdir crds_cache
git clone https://github.com/kevin218/Eureka.git
pip install -r eureka_freeze.txt

cd Eureka
git checkout 57cb0f1a576dfbbef9ba616b7a13a28c42efb876
pip install .

cd ../

# cp Eureka/demos/JWST/S2_nircam_wfss_template.ecf .
cp Eureka/demos/JWST/S3_nircam_wfss_template.ecf .
# cp Eureka/demos/JWST/S4_template.ecf .
# cp Eureka/demos/JWST/S5_template.ecf .
# cp Eureka/demos/JWST/S6_template.ecf .

sed -i 's:/home/User/:'`pwd`':' S3_nircam_wfss_template.ecf

sed -i 's:/Data/JWST-Sim/NIRCam/Stage2/:'/tiny/Stage2/':' S3_nircam_wfss_template.ecf
sed -i 's:/Data/JWST-Sim/NIRCam/Stage3/:'/tiny/Stage3/':' S3_nircam_wfss_template.ecf

python run_demo_eureka.py
