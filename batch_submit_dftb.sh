# to run: ./batch_submit_dftb.sh
# may need to change permissions: chmod 755 batch_submit_dftb.sh

# get user input
read -p "Enter number of displacements: " disp
echo 'Submitting' $disp 'calculations'


    for i in `seq 1 $disp `;
    do
    cd disp-"$i"
    ./submit_dftb 1 1 dftb3py_"$i"
    cd ..
            echo $i
    done