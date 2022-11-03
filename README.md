![Publish pdfs](https://github.com/stanmart/cv-pdf/actions/workflows/publish-pdfs.yml/badge.svg)
![Docker image size](https://shields.io/docker/image-size/stanmart/cv-builder/latest)
![License](https://shields.io/github/license/stanmart/cv-pdf)

# cv-pdf
This repo contains my most up-to-date cv in two languages (English and Hungarian) and three different versions (short, standard, long).

# Compilation

## Local (standard)
In order to compile the pdfs, `make` and `latexmk` need to be available on the path. Also, the `moderncv` Latex package and it's dependencies must be available. Either choose a Tex distribution that contains those by default (e.g. `texlive-latex-extra` on Debian/Ubuntu), or install them via `tlmgr`.

## Local (Docker)
Alternatively, the Docker image `stanmart/cv-builder` contains the aforementioned tools, plus all available `babel` extensions. The root folder with the main Makefile must be mounted to `/github/workspace` (as the image is mainly created for use in Github actions). If you would like to use it locally, simply run


```bash
docker run -v <path-to-the-repo>:/github/workspace stanmart/cv-builder:latest
```

or, if your working directory is already the root of this repo

```bash
docker run -v ${PWD}:/github/workspace stanmart/cv-builder:latest
```

If you want to build your own, similar Docker image, a `Dockerfile` is also provided in the repository.

## Github actions
A Github action is set up for this repository such that the pdfs are automatically built and published on every push. The action uses the `stanmart/cv-builder` Docker image. The resulting pdfs are published to this repo's `pdfs` branch, and are available under the url `https://<github-username>.github.io/<github-repo-name>/<filename>`. E.g., see [https://stanmart.github.io/cv-pdf/cv_sm.pdf](https://stanmart.github.io/cv-pdf/cv_sm.pdf) for the standard, English version of my cv.
