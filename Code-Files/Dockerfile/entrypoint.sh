cd /code
#service ssh start

python manage.py makemigrations
python manage.py migrate 
python manage.py runserver 0.0.0.0:8000