cakephp2:
	bash local_provisioning.sh
	git clone --depth=1 -b 2.9.8 git@github.com:cakephp/cakephp.git myapp
	docker exec laradock_workspace_1 bash container_provisioning_cakephp2.sh
cakephp3:
	bash local_provisioning.sh
	docker exec laradock_workspace_1 bash container_provisioning_cakephp3.sh

