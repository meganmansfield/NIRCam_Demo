# NIRCam_Demo
Demonstration of reducing simulated NIRCam data using Eureka. Created for the ERS Data Challenge.

Run the following commands to get started!

```
conda create --no-default-packages -n eureka-test python=3.9
conda activate eureka-test
chmod +x eureka-history.sh
./eureka-history.sh
```

Ensure you are in the correct environment with ```conda env list```!

Note: The final sed commands currently return a file does not exist "error" on linux. But it actually works.