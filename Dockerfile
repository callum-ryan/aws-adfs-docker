FROM python:3-alpine
ARG VERSION
RUN apk add g++ make libffi-dev libxml2-dev libxslt-dev openssl-dev
RUN pip install aws-adfs==$VERSION && mkdir -p /root/.aws
ENTRYPOINT ["aws-adfs"]
CMD ["--help"]
