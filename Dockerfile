#Build a multi-container app

#Use official Python image
FROM python:3.9

#Set Working Directory
WORKDIR /app

#Copying Files
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

#Run Flask App
CMD ["python", "app.py"]

