FROM python:3.7.3-stretch

WORKDIR /app

COPY . ./app/main.py /app/

ENV PIP_ROOT_USER_ACTION=ignore

# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 80

CMD ["python", "main.py"]