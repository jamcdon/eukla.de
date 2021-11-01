FROM continuumio/miniconda3

LABEL AUTHOR="jaredamcdon@gmail.com"

WORKDIR  /app

COPY environment.yml .

RUN conda env create -f environment.yml

SHELL ["conda", "run", "-n", "jupyter-env", "/bin/bash", "-c"]

RUN echo "verify jupyter install"
RUN python -c "import jupyterhub"

EXPOSE 8000

ENTRYPOINT ["conda", "run", "--no-capture-output", "-n", "jupyter-env", "python", "-m", "jupyterhub"]