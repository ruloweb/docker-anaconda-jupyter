#!/bin/bash

# Cron process
cron -f 2>&1 &

# Set Jupyter password
sed -ie "s/#c.NotebookApp.password = u''/c.NotebookApp.password = u'$JUPYTER_PASSWORD'/g" ~/.jupyter/jupyter_notebook_config.py

exec /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser
