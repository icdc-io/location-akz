# AKZ Location

AKZ is a production worker location of NovaCloud company located in Astana datacenter.


## Install ovirt

1. OS installed manually
2. LLDP is not configured, so configure in bonds in hosts:

```
ansible-playbook ovirt/1_first_host.yml --limit ovih01-osm
ansible-playbook ovirt/1_prepare_hosts.yml --limit ovih01-osm
```

3. Defined storage type in inventory and run deploy:

```
ansible-playbook ovirt/2_hosted_engine.yml --skip san_connection -e he_pause_host=true
```

4. Configure networks

```
ansible-playbook ovirt/3_configure_ovn.yml --skip san_net -e step_by_step=true
```

5. Added hosts
6. Configured default 'data' datastores


## Deploy Ceph

Move first 10 VM addresses starting from x.11 => x.20
ovn-nbctl set logical_switch ovirt-akz_san-6f48d9ae-61d2-4967-a9de-af84d1b98364 other_config:exclude_ips="10.254.2.1..10.254.2.10"
ovn-nbctl set logical_switch ovirt-akz_replica-bba48787-3d86-44b0-8a44-c7b659ef63eb other_config:exclude_ips="10.254.3.1..10.254.3.10"

Deploy on virtual machines (one by one to get expected IP addresses) which consumes disks from Compute nodes.

```
ansible-playbook ceph/01_ovirt_vm.yml -e step_by_step=true -e disk_type=nvme -e disk_count=23 --limit ceph01-mgmt
```

```
ansible-playbook ceph/02_prepare_hosts.yml --skip firewal
```

1. Shutdown VMs
2. **NOTE:** disable cloud-init after first configuration
3. Assign hardware disks from Compute server.
4. Carefully: Clear GPT partition info on some new disks:
```
sgdisk -Z /dev/sdX
```
