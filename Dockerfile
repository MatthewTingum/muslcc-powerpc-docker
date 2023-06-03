FROM matthewtingum/dockerbuild:0.1

RUN wget -P /tmp/ https://musl.cc/powerpc-linux-musl-cross.tgz \
 && tar -xvf /tmp/powerpc-linux-musl-cross.tgz -C /tmp/ \
 && mkdir /opt/cross \
 && mv /tmp/powerpc-linux-musl-cross /opt/cross/ \
 && rm /tmp/powerpc-linux-musl-cross.tgz

ENV PATH="/opt/cross/powerpc-linux-musl-cross/bin/:$PATH"
