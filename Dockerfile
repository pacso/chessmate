FROM jupyter/base-notebook:latest

# Optionally, install additional Python packages
# RUN pip install some_package another_package

# COPY your notebook into the container
# COPY yournotebook.ipynb /home/jon/

# Port to expose (Jupyter runs on 8888 by default)
EXPOSE 8888

# Defualt command to run Jupyter Notebook
CMD ["start-notebook.sh", "--NotebookApp.token=''"]

