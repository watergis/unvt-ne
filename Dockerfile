FROM node:12
WORKDIR /usr/src/app

RUN apt-get update && apt-get -y upgrade

RUN git clone https://github.com/mapbox/tippecanoe &&\
  cd tippecanoe; make -j3 LDFLAGS="-latomic"; make install; cd .. &&\
  rm -rf tippecanoe

COPY . /usr/src/app/

WORKDIR /usr/src/app/

RUN yarn

CMD ["/bin/bash"]