FROM continuumio/miniconda3

WORKDIR  /app

COPY environment.yml .

RUN conda env create -f environment.yml

SHELL ["conda", "run", "-n", "jupyter-env", "/bin/bash", "-c"]

RUN echo "verify jupyter install"
RUN python -c "import jupyterhub"

#RUN ["conda", "run", "--no-capture-output", "-n", "jupyter-env", "python", "-m", "jupyterhub", "--ip=192.168.3.25"]
RUN ["conda", "run", "--no-capture-output", "-n", "jupyter-env", "python", "-m", "jupyterhub", "--ip=192.168.3.25"]

EXPOSE 8000

ENTRYPOINT ["conda", "run", "--no-capture-output", "-n", "jupyter-env", "python", "-m", "jupyterhub"]