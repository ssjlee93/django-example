# django-example
sample Django project

Weasel Dictionary

## Project idea
probably some dictionary store.  
I send API req to lookup a word.  
LLM fetches the definition on whitelisted sources.  
Stores it in DB.  

### MVP
[] API to store words i've searched.  
[] API to list all words i've stored.  
[] API to update and tailor the list of definitions.  
[] API to delete the words (hard delete).  

### future 
[] interactive selection of definition.  
[] log sources on where i encountered the word.  
[] translations into other words.  
[] etymology.  

# Usage

## local
```shell
uv run manage.py runserver
```

## Docker
```shell
docker compose up --build -d
```

# Development steps 
```shell
uv init
uv add django
uv run django-admin startproject <project-name> <directory>
uv run manage.py runserver
uv run manage.py startapp weasel_dictionary
# add contents to views
# create .urls.py in app
# add the .urls.py in project.urls.py
```