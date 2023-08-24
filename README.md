# chessmate

This repository contains a Docker Compose setup for running Jupyter Notebooks. It allows you to quickly and reliably start a Jupyter environment without needing to install Jupyter and its dependencies on your local machine.

## Prerequisites

- **Docker**: Ensure you have Docker installed on your machine. If not, download and install Docker from [Docker's official website](https://www.docker.com/get-started).
  
- **Docker Compose**: Comes pre-packaged with Docker Desktop for Windows and Mac. If you're on Linux or need to install separately, follow the instructions [here](https://docs.docker.com/compose/install/).

## Getting Started

1. **Clone the Repository:**

```
git clone https://github.com/pacso/chessmate.git
cd chessmate/
```

2. **Using Docker Compose to Run Jupyter Notebook:**

```
docker-compose up
```

   This command:

   - Sets up a container with Jupyter Notebook.
   - Maps port `8888` inside the container to port `8888` on your local machine.
   - Mounts the directory specified in `docker-compose.yml` to `/home/jovyan/work` inside the container. This ensures that you can see and save your work on your local machine.

3. **Access Jupyter Notebook:**

   After the command, Docker will provide a URL to access Jupyter Notebook. It should look like this:

```
http://127.0.0.1:8888/?token=<some-token>
```

   Copy and paste this URL into your web browser to access Jupyter Notebook.

## Using the Jupyter Environment

- The `chessmate` directory inside Jupyter corresponds to the directory defined in the `docker-compose.yml`.
- Any notebooks or files you create and save inside the `chessmate` directory in Jupyter will be saved to your local directory.
- To install additional Python packages inside your Jupyter environment, you can add them to the Dockerfile and rebuild using `docker-compose build`.

## Stopping the Jupyter Container

To stop the Jupyter server and the container:

1. In your terminal, press `Ctrl + C`.
2. Optionally, you can bring down the Docker Compose services:

```
docker-compose down
```

## Contributing

If you'd like to contribute, please fork the repository, make your changes, and create a pull request. We'd love to merge in your changes!
