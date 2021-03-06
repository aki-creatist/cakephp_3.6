symphony2.7:
	bash local_provisioning_apache.sh
	docker exec laradock_workspace_1 bash container_provisioning_symphony2.sh
cakephp2:
	bash local_provisioning.sh
	git clone --depth=1 -b 2.9.8 git@github.com:cakephp/cakephp.git myapp
	docker exec laradock_workspace_1 bash container_provisioning_cakephp2.sh
cakephp3:
	bash local_provisioning.sh
	docker exec laradock_workspace_1 bash container_provisioning_cakephp3.sh
fuel1.6:
	bash local_provisioning.sh
	git clone https://github.com/fuel/fuel.git myapp
	docker exec laradock_workspace_1 bash container_provisioning_fuel16.sh
laravel:
	bash local_provisioning.sh
	docker exec laradock_workspace_1 bash container_provisioning_laravel.sh
