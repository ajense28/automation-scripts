# !! deletes batch directories and all contents
# for quickly restarting a phonopy or phono3py run

# to run: ./prepare_reset.sh
# may need to change permissions: chmod 755 prepare_reset.sh

# Get user input
read -p "Enter number of displacements: " disp
echo 'Removing directories for' $disp 'displacements'

    for i in `seq 1 $disp `;
    do
    rm -r disp-"$i"
        echo $i
    done