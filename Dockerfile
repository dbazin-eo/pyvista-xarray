ARG BASE_IMAGE_TAG=latest
FROM ghcr.io/pyvista/pyvista:$BASE_IMAGE_TAG

USER root
COPY . /opt/pvxarray/
WORKDIR /opt/pvxarray/
RUN apt update && apt install libgl1-mesa-glx
RUN pip install -r requirements.txt
RUN pip install .

USER jovyan
WORKDIR ${HOME}
COPY tests/data/Elevation.tif ${HOME}/Elevation.tif
COPY examples/ ${HOME}
ENV PYVISTA_OFF_SCREEN=true
