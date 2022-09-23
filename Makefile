install:
	pip install --upgrade pip\
		pip install -r requirements.txt

scrape:
	chmod +x scrape.sh && scrape.sh