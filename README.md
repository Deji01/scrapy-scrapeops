# Data-Engineering
Data Engineering

Install the ScrapeOps SDK
```sh
pip install scrapeops-scrapy
```
Add Your API Key
Insert your API key into your Scrapy projects settings.py file.
```sh
SCRAPEOPS_API_KEY='<API_KEY>'
```
Add in the ScrapeOps Extension
In the `settings.py` file, enable the ScrapeOps extension by simply adding it to the EXTENSIONS dictionary.
```sh
EXTENSIONS = {
        'scrapeops_scrapy.extension.ScrapeOpsMonitor': 500, 
        }
```
Enable the ScrapeOps Retry Middleware
To get the most accurate stats, you need to add in the ScrapeOps retry middleware into the DOWNLOADER_MIDDLEWARES dictionary and disable the default Scrapy Retry middleware in your Scrapy project's `settings.py` file.
```sh
DOWNLOADER_MIDDLEWARES = {
        'scrapeops_scrapy.middleware.retry.RetryMiddleware': 550,
        'scrapy.downloadermiddlewares.retry.RetryMiddleware': None,
        }
```
The retry middleware will operate the exactly as before, however, the ScrapeOps retry middleware will log every request, response and exception your spiders generate.

## Deploy via shub
Follow these instructions to deploy your spiders using shub:

1. Get shub, either by downloading or pip install:
```sh
$ pip install shub
```

2. Login with shub providing your API key (you can find it here):
```sh
$ shub login
```
API key: <YOUR_API_KEY>


3. Get into your local Scrapy project folder and deploy it to Scrapy Cloud:
```sh
$ shub deploy <YOUR_PROJECT_ID>
```
You can find the project ID in your project's URL.