FROM continuumio/miniconda3

LABEL AUTHOR="jaredamcdon@gmail.com"

WORKDIR  /app

COPY environment.yml .
COPY static/images/mini.svg .
COPY config/jupyterhub_config.py .

RUN conda env create -f environment.yml

SHELL ["conda", "run", "-n", "jupyter-env", "/bin/bash", "-c"]

RUN echo "verify jupyter install"
RUN python -c "import jupyterhub"

RUN ["conda", "run", "--no-capture-output", "-n", "jupyter-env", "python", "-m", "jupyterhub", "--config", "/app/jupyterhub_config.py"]
#RUN ["conda", "run", "--no-capture-output", "-n", "jupyter-env", "python", "-m", "jupyterhub", "--generate-config", "-f", "/app/jupyterhub_config.py"]

# this is a dev line -> see jupyterhub_confif.py line 1071
EXPOSE 4400

EXPOSE 8000

ENTRYPOINT ["conda", "run", "--no-capture-output", "-n", "jupyter-env", "python", "-m", "jupyterhub"]