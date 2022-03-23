import os
os.environ["CRDS_PATH"]="crds_cache/"
os.environ["CRDS_SERVER_URL"]="https://jwst-crds.stsci.edu"

import sys
sys.path.insert(0, '../../')
import eureka.S1_detector_processing.s1_process as s1
import eureka.S2_calibrations.s2_calibrate as s2
import eureka.S3_data_reduction.s3_reduce as s3
import eureka.S4_generate_lightcurves.s4_genLC as s4
import eureka.S5_lightcurve_fitting.s5_fit as s5
import eureka.S6_planet_spectra.s6_spectra as s6

# eventlabel = 'imaging_template'
# eventlabel = 'miri_lrs_template'
# eventlabel = 'nirspec_fs_template'
eventlabel = 'nircam_wfss_template'
ecf_path = './'

s3_meta = s3.reduceJWST(eventlabel, ecf_path=ecf_path)