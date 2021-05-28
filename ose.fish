complete --command ose --no-files --arguments (yq e '.clouds | keys | join(" ")' /root/.config/openstack/clouds.yaml) 
