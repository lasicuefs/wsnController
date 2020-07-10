#!/bin/bash
	
for i in $(seq 1 2)
do	

gnome-terminal --working-directory=IC/MatlabPart/Matlab_Bridge/ -- /usr/local/MATLAB/R2019b/bin/matlab -nodisplay -nosplash -nodesktop -r "run('/home/jaevillen/IC/MatlabPart/Matlab_Bridge/Server.m')" &

sleep 20

.././WSN -u Cmdenv -f wsnSc1.ini -n ../../simulations:..:../../../../inet4/src:../../../../inet4/examples:../../../../inet4/tutorials:../../../../inet4/showcases -c wsnSc1T${i} -r '$opMode="fuzzyControlled"' --vector-recording=false

done
