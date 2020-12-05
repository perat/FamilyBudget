Tutorial used [https://www.youtube.com/playlist?list=PL39pssg07dpDJas1vxb7Dyw5f8SkAw6c-]

Install required Python packages 
`pip install -r requirements/dev`

SQLite browser installation on MacOS 
`brew cask install db-browser-for-sqlite`

Apply database migrations 
`python manage.py migrate`

Create admin user 
`python manage.py createsuperuser`

Start server 
`python manage.py runserver`

### [MODELS AND MIGRATIONS (E04)](https://www.youtube.com/watch?v=lCREG7J7JMg&list=PL39pssg07dpDJas1vxb7Dyw5f8SkAw6c-&index=4)
Create new application:
```
python manage.py startapp public familyBudget/apps/public
python manage.py startapp accounts familyBudget/apps/accounts
```

Make migrations and apply new migrations
```
python manage.py makemigrations
python manage.py migrate 
```
