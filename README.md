# MantleConductivityProfile
A global mantle conductivity model derived from over 8 years of Swarm satellite magnetic data

# Data source
SwarmSatMag_2years_inverse_model: using data from 26/11/2013 to 31/12/2015

SwarmSatMag_5years_inverse_model: using data from 26/11/2013 to 31/12/2018

SwarmSatMag_8years_inverse_model: using data from 26/11/2013 to 31/12/2021

SwarmSatMag_8years_3jumps_inverse_model: using data from 26/11/2013 to 31/12/2021 with conductivity jumps at 410, 520, and 660 km depths


# Data format
## Conductivity models
Column #1: the depth of each layer's top interface (km)

Column #2: conductivity of each layer (S/m)

## Satellite C-responses
Column #1: period in seconds

Column #2: real part of C-responses in km

Column #3: imaging part of C-responses in km

Column #4: uncertainty of C-responses in km

Column #5: squared coherence coh2

# Reference
Yao H, Ren Z*,  Pan K, Tang J, Zhang K. A global mantle conductivity model derived from 8 years of Swarm satellite magnetic data. Earth and Planetary Physics, 2022, under review.
