FROM python:3
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY .. .
RUN chmod +x ./docker-entrypoint.sh
CMD ["./tests/docker-entrypoint.sh" ]
