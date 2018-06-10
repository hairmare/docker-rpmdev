# rpmdev Docker images

Docker image containing basic RPM development tools in a CentOS install.

These are useful for testing Specfiles in an isolated manner.

## Usage

Optain a bash shell with the workdir set to /git.

```
docker run --rm -ti -v `pwd`:'/git' quay.io/hairmare/centos_rpmdev
```
Or use Fedora
```
docker run --rm -ti -v `pwd`:'/git' quay.io/hairmare/fedora_rpmdev
```

Build package from a specfile.
```
specfileName="foo-bar.spec"

build-rpm-package.sh "${specfileName}"
```

Use the opinionated tarball helper if you need to create a source tarball.
```
vcsDir="/git"
targetFileName="foo-bar-0.0.0.tar.gz"

create-source-tarball.sh ${vcsDir} ${targetFileName}
```
