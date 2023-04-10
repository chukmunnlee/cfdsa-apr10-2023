FROM node:19

## BUILD
# mkdir /app && cd /app
WORKDIR /app

# copy the files
COPY main.js .
COPY package.json .
COPY package-lock.json .

COPY public public
COPY views views

# Install the node packages
RUN npm ci

## RUN
# Set the environment variables 
ENV APP_PORT=3000

HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
    CMD curl localhost:${APP_PORT}/healthz || exit 1

EXPOSE ${APP_PORT}

ENTRYPOINT node main