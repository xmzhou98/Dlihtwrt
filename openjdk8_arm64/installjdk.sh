#!/bin/bash
set -o errexit
set -o nounset

REVISION=8.432.06-r0
PACKAGES="openjdk8  openjdk8-jre openjdk8-jre-base openjdk8-jre-lib"

old_pwd=$(pwd)
tmp_dir=$(mktemp -d -t openjdk8-XXXXXXXXXX)
trap "rm -rf $tmp_dir" EXIT

cd "${tmp_dir}"

cp ${old_pwd}/jdk-apks/* ${tmp_dir}/

for package in $PACKAGES; do
    tar xzf "${package}-${REVISION}.apk"
done

cd "${old_pwd}"

mv $tmp_dir/usr/lib/jvm/java-1.8-openjdk /opt/java-1.8-openjdk

export JAVA_HOME=/opt/java-1.8-openjdk
echo export JAVA_HOME=/opt/java-1.8-openjdk >> /etc/profile
export JRE_HOME=${JAVA_HOME}/jre
echo export JRE_HOME=${JAVA_HOME}/jre >> /etc/profile
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
echo export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib >> /etc/profile
export PATH=${JAVA_HOME}/bin:$PATH
echo export PATH=${JAVA_HOME}/bin:$PATH  >> /etc/profile
source /etc/profile
