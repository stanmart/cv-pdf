![Publish pdfs](https://github.com/stanmart/cv-pdf/actions/workflows/publish-pdfs.yml/badge.svg)
![Docker image size](https://shields.io/docker/image-size/stanmart/cv-builder/latest)
![License](https://shields.io/github/license/stanmart/cv-pdf)

# cv-pdf
This repo contains my most up-to-date cv in two languages (English and Hungarian) and three different versions (short, normal, long).

# Compilation

## Local
In order to compile the pdfs, `make` and `latexmk` need to be available on the path. Also, the `moderncv` Latex package and it's dependencies must be available. Either choose a Tex distribution that contains it by default, or install it via `tlmgr`.

Alternatively, the docker image `stanmart/cv-builder` contains the aforementioned tools, plus the Hungarian `babel` extension. If you want to build your own, similar docker container, a `Dockerfile` is also provided in the repository.

## Github actions
A Github action is set up for this repository such that the pdfs are automatically built and published on every push. The action uses the `stanmart/cv-builder` docker image. The resulting pdfs are published to this repo's `pdfs` branch, and available under the url `https://stanmart.github.io/cv-pdf/FILENAME`. E.g., see [https://stanmart.github.io/cv-pdf/cv_sm.pdf](https://stanmart.github.io/cv-pdf/cv_sm.pdf) for the normal, English version.
