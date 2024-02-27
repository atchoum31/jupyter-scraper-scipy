FROM quay.io/jupyter/scipy-notebook

# Utiliser RUN pour installer des packages
RUN mamba install --yes \
    'requests' \
    'jupyterlab-lsp' \
    'python-lsp-server[all]' && \
    mamba clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

