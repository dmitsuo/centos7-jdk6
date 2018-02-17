FROM davimss/centos-base

USER root

ENV JDK_FILE jdk-6u45-linux-x64.tar.gz

RUN set -x \
    && curl -O https://www.dropbox.com/s/ayugx51xcphrz08/$JDK_FILE?dl=1 \
    && tar -xvf $JDK_FILE \
    && rm $JDK_FILE \
    && chmod -Rf 755 /opt \
    && chown caos:caos -Rf /opt

USER caos

ENV JAVA_HOME /opt/jdk1.6.0_45

CMD /bin/bash