#Digital Communications Matlab Simulation Project for the performance of different modulation schemes, BPSK, QPSK, FSK, QAM(16-64) in an AWGN environment.
*All simulations done by doing the following (**general steps**)
	* setup block diagram with AWGN: Eb/NO= 10 db and RandomIntegerGeneration: samples per frame = 50
	* run simulation for 1000
	* change AWGN powe to EbNo variable to draw BER vs Eb/No with bertool
	* open bertool draw therotical output and simulation output from -10 to 10 db and saving the figure
---

# BPSK 
BPSK is a two phase modulation scheme, where the 0’s and 1’s in a binary message are represented by two different phase states in 

the carrier signal: θ=0∘ for binary 1 and θ=180∘ for binary 0.


* Special steps in simulation
	* RandomIntegerGeneration: set size = 2

##block diagaram and scatter output
![block diagaram and scatter output](/BPSK/BPSK_Blocks_Scatterplots.PNG)

##performance
![block diagaram and scatter output](/BPSK/performance.PNG)

***BER = *** for 0 Eb/N0 = 10 db

---

# FSK
FSK is a frequency modulation scheme in which digital information is transmitted through discrete frequency changes of a carrier signal. 

It can be binary like PSK or more bits for symbol (I use binary in simulation). if it's binaray there will be two frequencies one called mark freq. for symbol '1' 

and the other called space frequnecy for '0'

* Special steps in simulation
	* RandomIntegerGeneration: set size = 2 

##block diagaram and scatter output
![block diagaram and scatter output](/FSK/FSK_Blocks_Scatterplots.PNG)

##performance
![block diagaram and scatter output](/FSK/performance.PNG)

***BER = *** for 0.0019 Eb/N0 = 10 db
---

# QPSK
QPSK is a modulation scheme same as PSK but it transmits two bits per symbol. In other words, a QPSK symbol represents 00, 01, 10, or 11.

In QPSK, the carrier varies in terms of phase and there are four possible phase shifts.

these four possible phase shifts sperated by 360°/4 = 90°. So our four QPSK phase shifts are 45°, 135°, 225°, and 315°.


* Special steps in simulation
	* RandomIntegerGeneration: set size = 4

##block diagaram and scatter output
![block diagaram and scatter output](/QPSK/QPSK_Blocks_Scatterplots.PNG)

##performance
![block diagaram and scatter output](/QPSK/performance.PNG)

***BER = *** for 0.0019 Eb/N0 = 10 db
---

# QAM 16
QAM is also antoher modulation scheme but this time we carry information in aplitude and in phase. It uses two carriers sin and cos and recived signal

can be demodulated easily as there is phase shift 90° between sin and cos


* Special steps in simulation
	* RandomIntegerGeneration: set size = 16
	* Chose min avg. power for 'Normalization method' option in QAM transimitter block and QAM Receiver block.eoretical

##block diagaram and scatter output
![block diagaram and scatter output](/QAM16/QAM_Blocks_Scatterplots.PNG)

##performance
![block diagaram and scatter output](/QAM16/performance.PNG)

***BER = *** for 0.217 Eb/N0 = 10 db
---

# QAM 64
Same idea as QAM 16 but with more combinations so more bits per symbol (6 bits)

* Special steps in simulation
	* RandomIntegerGeneration: set size = 64 
	* Chose min avg. power for 'Normalization method' option in QAM transimitter block and QAM Receiver block.

##block diagaram and scatter output
![block diagaram and scatter output](/QAM64/QAM_Blocks_Scatterplots.PNG)

##performance
![block diagaram and scatter output](/QAM64/performance.PNG)

***BER = *** for 0.651 Eb/N0 = 10 db
