FROM centos

RUN yum install -y \
        epel-release \
 && yum install -y \
        automake \
        fedpkg \
        git \
        libtool \
        make \
        rpm-build \
        rpmdevtools \
        selinux-policy-devel \
        selinux-policy-doc \
        tito \
 && yum clean all

COPY build-rpm-package.sh \
     create-source-tarball.sh \
  /usr/local/bin/

WORKDIR /git
