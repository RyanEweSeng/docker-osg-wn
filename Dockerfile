# GENERATED - EDIT Dockerfile.in INSTEAD

FROM centos:centos6

LABEL name="OSG 3.3 Worker Node Client on EL 6 + testing repos"
LABEL build-date="20170912-1329"

RUN yum -y install https://repo.grid.iu.edu/osg/3.3/osg-3.3-el6-release-latest.rpm && \
    yum -y install epel-release \
                   yum-plugin-priorities && \
    yum -y install --enablerepo=osg-testing \
                   osg-wn-client \
                   osg-wn-client-glexec \
                   redhat-lsb-core

# Install Singularity
RUN yum -y install --enablerepo=osg-upcoming-development singularity && \
    yum clean all
