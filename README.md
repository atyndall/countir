CountIR - Honours Project
=======

Files relating to my 2014-15 Computer Science honours project ("CountIR"). Read more about it [here](http://ash.id.au/countir/). Compiled thesis can be found at [thesis/thesis.pdf](thesis/thesis.pdf).

See also [TaRL](http://github.com/atyndall/tarl), the Thermal Array Library that powers the thesis.

An abbreviated version of my findings were also published by [IEEE Sensors](http://dx.doi.org/10.1109/JSEN.2016.2530824) ([public preprint](http://ash.id.au/countir/paper.pdf)).

## Abstract
With the increasing inter-networked and inexpensive nature of embedded sensors and systems, occupancy sensing, the detection of the presence and number of people in a given space, is becoming a cost-effective area of research. Knowing the number of occupants in a space can help reduce energy consumption and greenhouse gas emissions in both small homes and in large office buildings through more efficient climate control. The goal of this project was to develop an occupant sensing system that is low-cost, non-invasive, reliable and energy efficient.

After examining the available sensing options, we concluded that a low-resolution Thermal Detector Array (lrTDA) would be the most appropriate sensor for our project, as it has non-invasiveness advantages. The key paper in this area developed the "ThermoSense" system using an lrTDA in combination with image subtraction, feature extraction and machine learning classification algorithms. They made occupancy predictions with a Root-Mean-Square Error (RMSE) of only 0.35 occupants, at an estimated cost of 170 AUD. However, due to component availability issues, ThermoSense could not be directly replicated in the Australian market.

We designed our own sensing system for 185 AUD using an Arduino, a Raspberry Pi, and a different lrTDA (the MLX90620), which had a narrower, rectangular field of view. The system consumes ∼256 mW when active. We also developed the Thermal Array Library (TArL), a software library that implemented ThermoSense’s occupant detection algorithm. We then investigated ThermoSense’s classification methods, which used numeric Multi-Layer Perceptron, k-Nearest Neighbors and Linear Regression algorithms and found our results differed from theirs significantly in both RMSE and correlation, with both being lower. These results suggest that classifiers used are sensitive to the specific sensor’s properties.

After further experimentation with our own suite of nominal classification algorithms, we found an approach (K\*) that achieved an RMSE of 0.304 and a precision of 82%, which improves upon ThermoSense’s results. We reflected upon our four criteria, and with our choice of sensor, falling component costs, our accuracy results and power consumption statistics, we concluded that our sensing system prototype met our defined criteria.
