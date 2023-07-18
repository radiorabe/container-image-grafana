# Grafana Container Image

[Grafana](https://grafana.com/oss/grafana/) on [RaBe UBI9](https://radiorabe.github.io/container-image-ubi9-minimal/).
Should be fairly similar to [rhel9/grafana](https://radiorabe.github.io/container-image-ubi9-minimal/),
but not a port because it's manifest wasn't consulted.

## Features

* Grafana install from AlmaLinux RPMs
* Grafana [PCP datasources](https://grafana-pcp.readthedocs.io/en/latest/datasources/index.html)
* Grafana [Zabbix datasource](https://grafana.com/grafana/plugins/alexanderzobnin-zabbix-app/)

## Usage

Run it [as described in the docs](https://grafana.com/docs/grafana/latest/setup-grafana/installation/docker/).

## Release Management

The CI/CD setup uses semantic commit messages following the [conventional commits standard](https://www.conventionalcommits.org/en/v1.0.0/).
The workflow is based on the [RaBe shared actions](https://radiorabe.github.io/actions/)
and uses [go-semantic-commit](https://go-semantic-release.xyz/)
to create new releases.

The commit message should be structured as follows:

```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

The commit contains the following structural elements, to communicate intent to the consumers of your library:

1. **fix:** a commit of the type `fix` patches gets released with a PATCH version bump
1. **feat:** a commit of the type `feat` gets released as a MINOR version bump
1. **BREAKING CHANGE:** a commit that has a footer `BREAKING CHANGE:` gets released as a MAJOR version bump
1. types other than `fix:` and `feat:` are allowed and don't trigger a release

If a commit does not contain a conventional commit style message you can fix
it during the squash and merge operation on the PR.

## Build Process

The CI/CD setup uses [Docker build-push Action](https://github.com/docker/build-push-action)
 to publish container images. The workflow is based on the [RaBe shared actions](https://radiorabe.github.io/actions/).

## License

This application is free software: you can redistribute it and/or modify it under
the terms of the GNU Affero General Public License as published by the Free
Software Foundation, version 3 of the License.

## Copyright

Copyright (c) 2023 [Radio Bern RaBe](http://www.rabe.ch)
