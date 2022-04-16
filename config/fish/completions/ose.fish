complete --command ose --no-files --arguments (yq e '.clouds | keys | join(" ")' ~/.config/openstack/clouds.yaml) 
