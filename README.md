# Debianization for the Hashicorp Consul Binary

This repository contains the tools to build an updated Hashicorp Consul debian package.

Following the instructions, you will be able to have a working .deb debian package containing Consul.

## Short DEB-packaging HowTo

1. Simply run the following script included in the repository

```deb-automate-build.sh```

## Installing the Consul debian packages

After the build is completed, it's as simple as:

```dpkg -i ../Ccnsul*.deb```

