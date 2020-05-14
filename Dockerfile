# GENERATED - EDIT Dockerfile.in INSTEAD

FROM centos:centos6

LABEL name="OSG 3.4 Worker Node Client on EL 6 + development repos"
LABEL build-date="20200514-1251"

RUN yum -y install https://repo.opensciencegrid.org/osg/3.4/osg-3.4-el6-release-latest.rpm \
                   epel-release \
                   yum-plugin-priorities && \
    yum -y install --enablerepo=osg-development \
                   osg-wn-client \
                   redhat-lsb-core \
                   singularity && \
    yum clean all && \
    rm -rf /var/cache/yum/*
