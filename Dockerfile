FROM docker.elastic.co/elasticsearch/elasticsearch:7.17.3

MAINTAINER Cichy z Merkandi <kamil.ciszewski@merkandi.pl>

ENV discovery.type="single-node"

ENV http.port=9250

EXPOSE 9250/tcp

RUN bin/elasticsearch-plugin install pl.allegro.tech.elasticsearch.plugin:elasticsearch-analysis-morfologik:7.17.3
RUN bin/elasticsearch-plugin install analysis-ukrainian
