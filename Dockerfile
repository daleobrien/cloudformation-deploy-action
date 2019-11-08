FROM banst/awscli

LABEL version="1.0.0"

LABEL com.github.actions.name="AWS CloudFormation Deployment"
LABEL com.github.actions.description="Deploy an AWS CloudFormation Stack"
LABEL com.github.actions.icon="upload-cloud"
LABEL com.github.actions.color="orange"

LABEL repository="https://github.com/daleobrien/cloudformation-deploy-action"
LABEL homepage="https://github.com/daleobrien/cloudformation-deploy-action"
LABEL maintainer="Dale O'Brien"

RUN apk add --no-cache --virtual  .build-deps python3-dev gcc linux-headers musl-dev jq
# Also added AWS SAM
RUN pip install aws-sam-cli

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
