FROM continuumio/anaconda3

WORKDIR  /app

COPY environment.yml .

RUN anaconda env create -f environment.yml

SHELL ["anaconda", "run", "-n", "jupyter-env", "/bin/bash", "-c"]

RUN echo "verify jupyter install"
RUN python -c "import jupyterhub"

EXPOSE 8000

ENTRYPOINT ["anaconda", "run", "--no-capture-output", "-n", "jupyter-env", "python", "-m", "jupyterhub"]