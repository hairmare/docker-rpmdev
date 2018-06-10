FROM fedora

RUN dnf install -y \
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
 && dnf clean all

COPY build-rpm-package.sh \
     create-source-tarball.sh \
  /usr/local/bin/

WORKDIR /git
CMD 'bash'
