FROM prom/prometheus
LABEL maintainer=jon@jaggersoft.com

ARG HOME=/app
COPY . ${HOME}

ARG SHA
ENV SHA=${SHA}

RUN cp ${HOME}/prometheus.yml /etc/prometheus/
CMD [ "--config.file=/etc/prometheus/prometheus.yml" ]
