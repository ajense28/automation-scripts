# to run: ./prepare_dftb.sh

#!/bin/bash

# Get user input
read -p "Enter number of displacements: " disp
echo 'Generating directories for' $disp 'displacements'

if [ $disp -lt 10 ]; then
        for i in `seq 1 $disp `;
        do
        mkdir disp-"$i"
        cd disp-"$i"   
        cp ../submit_dftb .
        cp ../dftb_in.hsd .
        cp ../POSCAR-00"$i" POSCAR 
                echo $i
        cd ..
        done
        
elif [ $disp -lt 100 ]; then
        for i in `seq 1 9 `;
        do
        mkdir disp-"$i"
        cd disp-"$i"   
        cp ../submit_dftb .
        cp ../dftb_in.hsd .
        cp ../POSCAR-000"$i" POSCAR 
                echo $i
        cd ..
        done
        
        for i in `seq 10 $disp `;
        do
        mkdir disp-"$i"
        cd disp-"$i"   
        cp ../submit_dftb .
        cp ../dftb_in.hsd .
        cp ../POSCAR-00"$i" POSCAR 
                echo $i
        cd ..
        done
        
elif [ $disp -lt 1000 ]; then
        for i in `seq 1 9 `;
        do
        mkdir disp-"$i"
        cd disp-"$i"   
        cp ../submit_dftb .
        cp ../dftb_in.hsd .
        cp ../POSCAR-0000"$i" POSCAR 
                echo $i
        cd ..
        done

        for i in `seq 10 99 `;
        do
        mkdir disp-"$i"
        cd disp-"$i"   
        cp ../submit_dftb .
        cp ../dftb_in.hsd .
        cp ../POSCAR-000"$i" POSCAR 
                echo $i
        cd ..
        done
        
        for i in `seq 100 $disp `;
        do
        mkdir disp-"$i"
        cd disp-"$i"   
        cp ../submit_dftb .
        cp ../dftb_in.hsd .
        cp ../POSCAR-00"$i" POSCAR 
                echo $i
        cd ..
        done
fi


        


