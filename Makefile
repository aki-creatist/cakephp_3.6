init:
	bash local_provisioning.sh
	docker exec laradock_workspace_1 bash container_provisioning.sh
