FROM hashicorp/terraform:light

ENV AWS_PROFILE "fabiano.florentino"

RUN apk add python py-pip make vim \
  && pip install awscli \
  && adduser --disabled-password --gecos "" terraform \
  && mkdir -p /home/terraform/.aws \
  && chown terraform:terraform /home/terraform/.aws

ADD awscli/config /home/terraform/.aws/config
ADD awscli/credentials /home/terraform/.aws/credentials

RUN chown -R terraform:terraform /home/terraform/.aws/config \
  && chown -R terraform:terraform /home/terraform/.aws/credentials \
  && chmod 0600 /home/terraform/.aws/config \
  && chmod 0600 /home/terraform/.aws/credentials

WORKDIR /aws

USER terraform

ENTRYPOINT [ "sh" ]