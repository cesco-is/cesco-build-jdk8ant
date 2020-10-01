FROM azul/zulu-openjdk:8

RUN apt-get update && apt-get install -y ant

RUN mkdir /source
WORKDIR /source

ENV B-PATH "./"

CMD echo $B-PATH
CMD ant -find $B-PATH
