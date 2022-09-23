install:
	pip install --upgrade pip\
		pip install -r requirements.txt

clean:
	python3 clean_db.py