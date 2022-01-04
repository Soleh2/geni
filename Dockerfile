FROM buildkite/puppeeter:latest

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install nodejs -y
RUN npm install ytdl-core@latest

WORKDIR /app
COPY . /app
RUN npm install
CMD ["npm", "start"]
EXPOSE 8080
