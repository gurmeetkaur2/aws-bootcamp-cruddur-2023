FROM python:3.10-slim-buster as builder
# Inside Container
# make a new folder inside the container
WORKDIR /backend-flask
# Outside Container -> Inside Container
# this contains the libraries we want to install to run the app
COPY requirements.txt requirements.txt
# Inside Container
# Install the Python libraries used for the app
RUN pip3 install -r requirements.txt
# Outside Container -> Inside Container
# . means everything in the current directory
# first period (.) - /backend-flask (outside container)
# first period (.) - /backend-flask (inside container)
COPY . .

FROM builder
# WORKDIR /backend-flask
# COPY --from=builder /backend-flask /backend-flask
# Set Environment Variables (Env Vars)
# Inside Container and will remain set when the container is running
ENV FLASK_ENV=development
EXPOSE ${PORT}
# CMD - Command
# python -m flask run --host=0.0.0.0 --port=4567
# CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=4567"]
CMD [ "python3", "app.py" ]