FROM python:alpine3.19

# Install requirements
# COPY requirements.txt .
# RUN pip install -r requirements.txt

# Add source code
WORKDIR /app
COPY .  /app
RUN pip install -r requirements.txt


# Set environment variables
ENV SECRET_KEY=1296328458adac23
ENV FLASK_APP=app
ENV FLASK_ENV=development
ENV FLASK_DEBUG=True
EXPOSE 5000
# Run
ENTRYPOINT [ "flask", "run", "--host=0.0.0.0" ]
