FROM williamyeh/ansible:alpine3

RUN apk add --no-cache \
		gcc \
		musl-dev \
		python2-dev

RUN pip install --upgrade \
		pip

WORKDIR /root
COPY requirements.txt .

RUN pip install --upgrade \
		-r requirements.txt

ADD https://amazon-eks.s3-us-west-2.amazonaws.com/1.10.3/2018-06-05/bin/linux/amd64/heptio-authenticator-aws \
    /root/heptio-authenticator-aws
RUN ln -s ~/heptio-authenticator-aws /usr/bin/

WORKDIR /work
VOLUME  /work

