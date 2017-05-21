FROM continuumio/anaconda:latest

RUN /opt/conda/bin/conda install jupyter -y --quiet && \
    mkdir /opt/notebooks && \
    jupyter notebook --generate-config

RUN pip install plotly cufflinks PyLyrics zipcode humanize

RUN conda install -y -c conda-forge scrapy

RUN apt-get install cron -y

ADD start.sh /opt/conda/bin/

COPY cron.daily/* /etc/cron.daily

CMD ["/opt/conda/bin/start.sh"]

