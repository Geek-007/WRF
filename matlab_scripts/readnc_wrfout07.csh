#!/bin/csh -f

set Matlab_HOME = /ees/soft/Matlab2010a
set PATH = /ees/users/EMG/ees2/pangjm/matlab_test
cd $PATH

set MatlabScript = readnc_wrfout07.m

rm -rf print_07.out
${Matlab_HOME}/bin/matlab -nodesktop -nosplash -nojvm -r "run ./$MatlabScript;quit" >& print_07.out

exit 0
