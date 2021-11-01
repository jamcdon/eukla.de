FROM continuumio/miniconda3

WORKDIR  /app

COPY environment.yml .

RUN conda env create -f environment.yml

RUN conda init bash

RUN conda activate jupyter-env
RUN echo "verify jupyter install"
RUN python -c "import jupyterhub-base"

RUN jupyterhub