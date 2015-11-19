# docker-gitlab-runner

> gitlab-ci-multi-runner with automated registration

[![Build Status](https://travis-ci.org/cybertk/docker-gitlab-runner.svg)](https://travis-ci.org/cybertk/docker-gitlab-runner)
[![Docker Hub](https://img.shields.io/badge/docker-ready-blue.svg)](https://registry.hub.docker.com/u/quanlong/gitlab-runner/)
[![Docker image layers and size](https://badge.imagelayers.io/quanlong/gitlab-runner:latest.svg)](https://imagelayers.io/?images=quanlong/gitlab-runner:latest 'Get your own badge on imagelayers.io')

## Why **cybertk/docker-gitlab-runner**?

- Very small image size, ~26M
- Single command to boot up the GitLab runner with automatation registration
- **docker-compose** friendly, all configurations can stored in `docker-compose.yml`

## Getting Started

```bash
docker run -e CI_SERVER_URL=https://gitlab.com/ci -e REGISTRATION_TOKEN=xxxxxx quanlong/gitlab-runner
```

## License

MIT license
