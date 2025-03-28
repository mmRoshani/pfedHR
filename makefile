update_requirements:
	@echo "[make] updating python requirements.txt"
	pip freeze > requirement.txt 

run:
	@echo "[make] running on one GPU"
	python3 ./src/main.py --device cuda:1

run_cifar10:
	@echo "[make] running with cifar-10 on GPU"
	python3 ./src/main.py --device cuda:1 \
	--public_dataset cifar10 \
	--model_same 1 \
	--model resnet18 \
	--num_users 10 \
	--epochs 80 \
	--frac 1.0 \
	--local_ep 1


	