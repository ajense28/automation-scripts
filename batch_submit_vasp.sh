# to run: ./batch_submit_vasp.sh
# may need to change permissions: chmod 755 batch_submit_vasp.sh

# get user input
read -p "Enter number of displacements: " disp
echo 'Submitting' $disp 'calculations'

    for i in `seq 1 $disp `;
    do
    cd disp-"$i"
    sbatch ./submit_vasp 1 1 calc_"$i"
    cd ..
            echo $i
    done