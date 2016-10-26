# Python 3.5 Flask Base Image

Base docker image for Flask applications.

**Versioning**
As of October 2016, `3.5` and `latest` are the same. We're explicitly extending 3.5 for more control over the upgrade.

**Extensions**
`build-essential` `libmysqlclient-dev` `python3-dev`

### Usage

Extend this image in your `Dockerfile` and add your source code.
