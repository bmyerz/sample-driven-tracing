set -o nounset

tracename=$1
numc=$2

grappa_store_counter_trace $tracename gce_user_incomplete

for (( i=1; i<=$numc; i++ ))
do
    grappa_store_counter_trace $tracename app_${i}_gce_incomplete
done
