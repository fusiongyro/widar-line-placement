# WIDAR Line Placement Test

This program is a little test of an algorithm for generating valid
WIDAR configurations from high-level science information.

The input to the program is a text file formatted like so:

    1. 35.75 GHz with res 1 km/s and range 500 km/s
    2. 35.84 GHz with res 1 km/s and range 100 km/s
    3. 36.15 GHz with res 1 km/s and range 800 km/s
    
The output of the program will look like this:

    Baseband A0/C0: centered at 35.95 GHz
      1. 64 MHz at 35.747 GHz with 4 blbps
      2. etc.

No code present yet.
