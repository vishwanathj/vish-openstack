LIST="$(openstack port list -c ID -f value)"
echo "${LIST}"
for i in $(openstack port list -c ID -f value); do
    echo $(openstack port delete $i)
done
