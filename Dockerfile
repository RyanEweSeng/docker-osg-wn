# GENERATED - EDIT Dockerfile.in INSTEAD

FROM centos:centos6

LABEL name="OSG 3.4 Worker Node Client on EL 6 + development repos"
LABEL build-date="20190411-1608"

RUN yum -y install https://repo.opensciencegrid.org/osg/3.4/osg-3.4-el6-release-latest.rpm && \
    yum -y install epel-release \
                   yum-plugin-priorities && \
    yum -y install --enablerepo=osg-development \
                   osg-wn-client \
                   redhat-lsb-core

# Install Singularity
RUN yum -y install --enablerepo=osg-upcoming-development singularity && \
    yum clean all
