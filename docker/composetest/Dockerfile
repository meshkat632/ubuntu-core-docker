FROM python:3.4-alpine
ADD . /code
WORKDIR /code
ENV http_proxy http://proxyUserName:proxyUserPassword@bluecoat.media-saturn.com:80
ENV https_proxy http://proxyUserName:proxyUserPassword@bluecoat.media-saturn.com:80
RUN pip install -r requirements.txt
CMD ["python", "app.py"]