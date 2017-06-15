# WIDAR Line Placement Test

This program is a little test of an algorithm for generating valid
WIDAR configurations from high-level science information.

The input to the program is a text file formatted like so:

    1. 35.75 GHz with res 1 km/s and range 500 km/s
    2. 35.84 GHz with res 1 km/s and range 100 km/s
    3. 36.15 GHz with res 1 km/s and range 800 km/s
    
The output of the program will look like this:

    Baseband A0/C0: centered at 35.95 GHz
      0. 128 MHz at 36.142 GHz with 17 Bl.BPs
      1. 16 MHz at 35.837287226 GHz with 1 Bl.BP and 4x recirculation
      2. 64 MHz at 35.747294038 GHz with 5 Bl.BPs and 2x recirculation

No code present yet, just a start on the parser.
