run:
	@echo "[make] running on one GPU"
	python3 ./src/main.py --device cuda:1

update_requirements:
	@echo "[make] updating python requirements.txt"
	pip freeze > requirement.txt 
