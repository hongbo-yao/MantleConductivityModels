# MantleConductivityProfile
A global mantle conductivity model derived from 8 years of Swarm satellite magnetic data. This work is a pre-research for the Macau Science Satellite-1 (MSS-1) mission (https://mss.must.edu.mo/).

### Data source
inverse_model_2years: using data from 26/11/2013 to 31/12/2015

inverse_model_5years: using data from 26/11/2013 to 31/12/2018

inverse_model_8years: using data from 26/11/2013 to 31/12/2021

inverse_model_8years_jump: using data from 26/11/2013 to 31/12/2021 with conductivity jumps at 410 and 520 depths


### Data format
#### Conductivity models
Column #1: the depth of each layer's top interface (km)

Column #2: conductivity of each layer (S/m)

#### Satellite C-responses
Column #1: period in seconds

Column #2: real part of C-responses in km

Column #3: imaging part of C-responses in km

Column #4: uncertainty of C-responses in km

### Reference
Hongbo Yao, Zhengyong Ren*, Kejia Pan, Jingtian Tang, Keke Zhang. A global mantle conductivity model derived from 8 years of Swarm satellite magnetic data. Earth and Planetary Physics, 2023, 7(1), 49-56. https://doi.org/10.26464/epp2023011