FROM python:3.11-slim
WORKDIR /docs
RUN apt-get update && apt-get install -y make \
    && rm -rf /var/lib/apt/lists/* \
    && pip install --no-cache-dir \
        sphinx \
        sphinx-rtd-theme \
        sphinx-autobuild \
        sphinx-glpi-theme