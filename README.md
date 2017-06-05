# Sphinx docs in Docker

[Sphinx](http://www.sphinx-doc.org/en/stable/) is a tool that makes it easy to create intelligent and beautiful documentation. It is also the technology that [ReadTheDocs](https://readthedocs.org/) uses to build their documentation. This image helps you get started with sphinx without installing any dependencies on your computer. The only prerequirement is [Docker](http://docker.com/).

## Installation

The image is publish on [docker hub](http://hub.docker.com/) named [`pardahlman/sphinx`](https://hub.docker.com/r/pardahlman/sphinx/).

### New documentation

For new documentation create a folder for the documentation

```bash
mkdir docs
```

Then run the following docker command

```bash
docker run -d  -v $PWD/docs:/docs -p 8000:8000 pardahlman/sphinx
```

This creates a docker container that mounts the `docs` directory to `/docs` (where the documentation is expected to be). Use `docker ps` to find the ID of the newly created container. Then initiate the documentation with the following command (replace `92` with the id of your container)

```bash
docker exec -it 92 sphinx-quickstart
```

Once the setup is done, restart the sphinx container

```bash
docker container restart 92
```

Open a browser and navigate to `localhost:8000`.

### Existing documentation

Simply run

```bash
docker run -d  -v /path/to/docs:/docs -p 8000:8000 pardahlman/sphinx
```

Open a browser and navigate to `localhost:8000`.

## Read the docs theme

The image is prepared with the [read the docs theme](https://github.com/rtfd/sphinx_rtd_theme). In order to use it, follow the configuration instructions [here](https://github.com/rtfd/sphinx_rtd_theme#installation):

```py
import sphinx_rtd_theme
html_theme = "sphinx_rtd_theme"
html_theme_path = [sphinx_rtd_theme.get_html_theme_path()]
```