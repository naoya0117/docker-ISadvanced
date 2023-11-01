From ubuntu

COPY ./schedule /app
WORKDIR /app

RUN apt-get update && apt-get install -y \
    software-properties-common \
    gnupg2 \
    tzdata \
    wget
ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN wget -O- https://apt.corretto.aws/corretto.key | apt-key add -
RUN add-apt-repository 'deb https://apt.corretto.aws stable main'

RUN apt-get update && apt-get install -y \
    java-17-amazon-corretto-jdk \
    language-pack-ja\
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

    
RUN  locale-gen ja_JP.UTF-8
ENV  LANG ja_JP.UTF-8
