FROM gitlab/gitlab-runner:alpine

MAINTAINER Quanlong <kyan.ql.he@gmail.com>

WORKDIR /home/gitlab-runner

ENV CONFIG_FILE=/etc/gitlab-runner/config.toml

COPY ./entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
