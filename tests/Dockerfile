FROM python:3.7
WORKDIR /test
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD [ "python", "-m", "unittest", "test_hello" ]
