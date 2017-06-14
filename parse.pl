:- use_module(library(dcg/basics)).

% top level parser: get all the spectral lines
spectral_lines([]) --> [].
spectral_lines([Line|Lines]) --> spectral_line(Line), spectral_lines(Lines).

% read a spectral line
spectral_line(line(Num, Frequency, Resolution, Range)) -->
    integer(Num), ".",
    frequency(Frequency),
    "with res",  % <-- this will probably have to change
    velocity(Resolution),
    "and range",
    velocity(Range).

% read a frequency
frequency(Frequency) --> read_unit(freq, Frequency).

% read a velocity
velocity(Velocity) --> read_unit(vel, Velocity).

read_unit(TargetUnit, TargetValue) -->
    float(Value),
    unit(TargetUnit, Unit),
    % this may get gross
    { unit_conversion(Value, Unit, TargetUnit, TargetValue) }.

% need to implement unit conversion stuff here
