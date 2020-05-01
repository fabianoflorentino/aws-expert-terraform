FROM hashicorp/terraform:light

ENV AWS_PROFILE "fabiano.florentino"

RUN apk add python py-pip make vim \
  && pip install awscli \
  && adduser --disabled-password --gecos "" aws \
  && mkdir -p /home/aws/.aws \
  && chown aws:aws /home/aws/.aws

ADD awscli/config /home/aws/.aws/config
ADD awscli/credentials /home/aws/.aws/credentials

RUN chown -R aws:aws /home/aws/.aws/config \
  && chown -R aws:aws /home/aws/.aws/credentials \
  && chmod 0600 /home/aws/.aws/config \
  && chmod 0600 /home/aws/.aws/credentials

WORKDIR /aws

USER aws

ENTRYPOINT [ "sh" ]