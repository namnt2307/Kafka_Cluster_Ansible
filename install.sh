HOSTS=( master1 master2 worker1 )


INC=1
for HOST in "${HOSTS[@]}"
do
    IP=`cat vars.yml | grep $HOST | awk '/:/ {print $2}' `
    ansible-playbook kafka.yml -e "HOST=$HOST ID=$INC MASTER_IP=$IP"
    ((INC=INC+1))
done