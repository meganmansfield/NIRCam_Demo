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

# grabbing the template run files
# cp Eureka/demos/JWST/S2_nircam_wfss_template.ecf .
cp Eureka/demos/JWST/S3_nircam_wfss_template.ecf .
# cp Eureka/demos/JWST/S4_template.ecf .
# cp Eureka/demos/JWST/S5_template.ecf .
# cp Eureka/demos/JWST/S6_template.ecf .

# changing hard coded things
sed -i '' -e 's:/home/User/:'`pwd`':' S3_nircam_wfss_template.ecf

sed -i '' -e 's:/Data/JWST-Sim/NIRCam/Stage2/:'/tiny/Stage2/':' S3_nircam_wfss_template.ecf
sed -i '' -e 's:/Data/JWST-Sim/NIRCam/Stage3/:'/tiny/Stage3/':' S3_nircam_wfss_template.ecf

# run stage 2 to stage 3
python run_demo_eureka.py
