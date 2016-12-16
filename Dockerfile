FROM andrewosh/binder-base

MAINTAINER Giacomo Vianello <giacomov@stanford.edu>

RUN apt-get update

USER main

RUN pip install -I --upgrade setuptools
RUN pip install --upgrade ipywidgets
RUN jupyter nbextension enable --py --sys-prefix widgetsnbextension

RUN pip install git+https://github.com/giacomov/3ML.git && pip install git+https://github.com/giacomov/astromodels.git
