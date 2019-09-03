FROM ubuntu:16.04

RUN apt-get update && apt-get install -y curl build-essential ca-certificates --no-install-recommends \
  && curl -sL https://deb.nodesource.com/setup_10.x | bash - && apt-get install -y nodejs \
  && curl -sSL https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
  && echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list \
  && apt-get update && apt-get install -y google-chrome-stable firefox --no-install-recommends \
  && rm -rf /var/lib/apt/lists/*
