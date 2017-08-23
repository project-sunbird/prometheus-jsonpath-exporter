FROM python:2.7.13-alpine

COPY app /opt/prometheus-jsonpath-exporter

RUN pip install -r /opt/prometheus-jsonpath-exporter/requirements.txt

EXPOSE 9158

ENTRYPOINT ["python", "/opt/prometheus-jsonpath-exporter/exporter.py"]
