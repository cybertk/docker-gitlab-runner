#!/bin/bash

guard() {
    eval var=\$$1
    if [ -z "$var" ]; then
        echo "\$$1 is required"
        exit 1
    fi
}

if [ ! -f "$CONFIG_FILE" ]; then
    echo Provisioning gitlab-runner

    # For all available envs, see https://gitlab.com/gitlab-org/gitlab-runner/blob/master/common/config.go
    guard REGISTRATION_TOKEN
    guard CI_SERVER_URL

    gitlab-runner --debug -l debug register --config $CONFIG_FILE -n
    [ $? -eq 0 ] || exit 1

    cat $CONFIG_FILE
fi

exec gitlab-runner run --user=gitlab-runner --working-directory=/home/gitlab-runner --config $CONFIG_FILE
