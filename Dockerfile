FROM python:3.11.0

COPY hello_world.py .

ENTRYPOINT ["python", "./hello_world.py"]