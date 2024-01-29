# Speech Recognition in Autonomous car 

In this model, cross correlation was implemented in MATLAB to compare two or more signals and detect the most accurate one of the all by finding the percetage of similarity between our recorded Signal signal and the testing signals.

How Does Algorithm Work ?

1. The sound wave is captured and placed in a graph showing its amplitude over time. Amplitude units are expressed in decibels (dB).

2. The wave is then chopped into blocks , where the height of a block determines its state. Each state is then allocated a number hence successfully converting the sound from analog to digital.

3. Even when the data is digitized, something is still missing. In the speech recognition process, we need three elements of sound. Its frequency, intensity, and time it took to make it. Therefore, a complex speech recognition algorithm known as the Fast Fourier Transform is used.

4. Then after the algorithm is applied to get the pecentage of similarity.

# Here are related formulas
![formula](https://user-images.githubusercontent.com/120084118/206406357-80890fa1-9ab2-4c8f-b0c5-3e8e2ef76de2.png)

# How it works graphically

![Screenshot (122)](https://user-images.githubusercontent.com/120084118/206407265-e5501b71-fc10-4ce7-9829-9d588d43cbcf.png)

![Screenshot (123)](https://user-images.githubusercontent.com/120084118/206407339-0020edb8-9039-41ac-86bc-18f8f4cf32f2.png)

![Screenshot (124)](https://user-images.githubusercontent.com/120084118/206407405-524ba4bb-087e-45d7-a169-18576aaf455b.png)
