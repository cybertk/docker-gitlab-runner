FROM gitlab/gitlab-runner:alpine-v11.1.0

MAINTAINER Quanlong <kyan.ql.he@gmail.com>

ENV CONFIG_FILE=/etc/gitlab-runner/config.toml

COPY ./entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
