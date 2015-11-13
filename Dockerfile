FROM gitlab/gitlab-runner:latest

MAINTAINER Quanlong <kyan.ql.he@gmail.com>

WORKDIR /home/gitlab-runner

ENV CONFIG_FILE=/home/gitlab-runner/config.toml
# Remove global config.toml, as automated registion is controller by the exsitence of CONFIG_FILE
RUN rm -f /etc/gitlab-runner/config.toml

COPY ./entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
