
apply:
	-kubectl delete -f tools.yaml
	kubectl apply -f tools.yaml

hostnetwork:
	-kubectl delete -f tools-hostnetwork.yaml
	kubectl apply -f tools-hostnetwork.yaml



docker:
	docker build -t docker.io/hefabao/tools-k8s:v0.1 .



