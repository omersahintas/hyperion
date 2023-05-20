ARG BASE_IMAGE
ARG BASE_VERSION

FROM ${BASE_IMAGE}:${BASE_VERSION} AS development
ARG DEVEL_DEPS=sudo build-essential git nano bash-completion

RUN apt update && apt dist-upgrade -y && apt install -y ${DEVEL_DEPS}

RUN useradd --create-home --groups sudo --shell /bin/bash developer \
    --uid 1000 --user-group \
    # && mkdir /etc/sudoers.d/ \
    && echo "developer ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer \
    && chmod 600 /etc/sudoers.d/developer

# RUN python3 -m pip install --no-cache-dir --upgrade pipenv

USER developer
RUN mkdir /home/developer/workspace
WORKDIR /home/developer/workspace

COPY --chown=developer:developer . ./
RUN sudo ./install.sh 
RUN pipenv sync
