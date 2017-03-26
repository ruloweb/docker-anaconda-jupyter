FROM continuumio/anaconda:latest

RUN /opt/conda/bin/conda install jupyter -y --quiet && \
    mkdir /opt/notebooks && \
    jupyter notebook --generate-config

RUN pip install plotly

ADD start.sh /opt/conda/bin/

CMD ["/opt/conda/bin/start.sh"]

