FROM jupyter/base-notebook:latest

# Install additional Python packages
RUN pip install python-chess

# COPY your notebook into the container
RUN mkdir /home/jovyan/chessmate
COPY . /home/jovyan/chessmate/

# Port to expose (Jupyter runs on 8888 by default)
EXPOSE 8888

# Defualt command to run Jupyter Notebook
CMD ["start-notebook.sh", "--NotebookApp.token=''", "--NotebookApp.password=''", "--NotebookApp.allow_origin='*'"]
