#!/usr/bin/bash

version=1.0.0
release=1.0.0

rm -rf ~/rpmbuild/ \
&& mkdir -p ~/rpmbuild/SOURCES \
&& cd ~/rpmbuild/SOURCES/ \
&& git clone https://github.com/vksir/python-hello-rpm.git \
&& mv python-hello-rpm python-hello-rpm-${version} \
&& tar -czvf python-hello-rpm-${version}.tar.gz python-hello-rpm-${version} \
&& rpmbuild -ba ~/rpmbuild/SOURCES/python-hello-rpm-${version}/spec/python-hello-rpm.spec \
&& rpm -ql ~/rpmbuild/RPMS/noarch/python-hello-rpm-${version}-${release}.noarch.rpm