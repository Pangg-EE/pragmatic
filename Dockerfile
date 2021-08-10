FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/Pangg-EE/pragmatic.git

WORKDIR /home/pragmatic/

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY=django-insecure-y(k24-)^wa&cx3&99h0#)x!37%#6i1+3*i1z9o%_#bq9$2qzuc" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
