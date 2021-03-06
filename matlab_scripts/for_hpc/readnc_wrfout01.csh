#!/bin/csh -f

set Matlab_HOME = /ees/soft/Matlab2010a
set PATH = /ees/users/EMG/ees2/daijn/matlab/matlab_test
cd $PATH

set MatlabScript = readnc_wrfout01.m

rm -rf print_01.out
${Matlab_HOME}/bin/matlab -nodesktop -nosplash -nojvm -r "run ./$MatlabScript;quit" >& print_01.out

exit 0
