FROM node:8.4.0-slim

LABEL maintainer="Akshay Chand <achand@mkpcap.com>"
LABEL version="0.0.1"
LABEL description="Prizm @RealTime - A real time web application based on socketcluster."

RUN mkdir -p /usr/src/
WORKDIR /usr/src/
COPY . /usr/src/

RUN npm install .

EXPOSE 80

CMD ["npm", "run", "start:docker"]
