FROM opensuse

RUN zypper install -y \
           automake \
           git \
           libtool \
           make \
           osc \
           rpm-build \
           rpmdevtools \
           rpmlint \
           selinux-policy-devel \
           selinux-policy-doc \
 && zypper clean -a

COPY build-rpm-package.sh \
     create-source-tarball.sh \
  /usr/local/bin/

WORKDIR /git
CMD 'bash'
