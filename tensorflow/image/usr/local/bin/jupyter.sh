#! /bin/bash

jupyter lab \
    --ip=* --port=8888 \
    --no-browser \
    --allow-root \
    --NotebookApp.token="${JUPYTER_TOKEN}" \
    --NotebookApp.password="${JUPYTER_PASSWORD}" \
    ${HOME}