# GENERATED - EDIT Dockerfile.in INSTEAD

FROM centos:centos7

LABEL name="OSG 3.3 Worker Node Client on EL 7 + testing repos"
LABEL build-date="20170406"

RUN yum -y install https://repo.grid.iu.edu/osg/3.3/osg-3.3-el7-release-latest.rpm && \
    yum -y install epel-release \
                   yum-plugin-priorities && \
    yum -y install --enablerepo=osg-testing \
                   osg-wn-client \
                   osg-wn-client-glexec \
                   redhat-lsb-core

# Install Singularity
RUN yum -y install --enablerepo=osg-upcoming-development singularity && \
    yum clean all
