#! /bin/bash

# create a default password if there is no jupyter config
if [ ! -d ${HOME}/.jupyter ]; then
    echo "creating a simple password"
    jupyter notebook --generate-config
    python -c "from notebook.auth import passwd; print(passwd('$JUPYTER_PASSWORD'))" | xargs printf "c.NotebookApp.password = u'%s'\n" >> /root/.jupyter/jupyter_notebook_config.py 
fi

jupyter lab --ip=* --port=8888 --no-browser --allow-root ${HOME}