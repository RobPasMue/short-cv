# RobPasMue's short resume

[![CV Build](https://github.com/RobPasMue/short-cv/actions/workflows/build-cv.yml/badge.svg)](https://github.com/RobPasMue/short-cv/actions/workflows/build-cv.yml)
[![MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Project containing my one-page resume in LaTeX.

## Further details

The project consists on a main `tex` file named `ROBERTO-PASTOR.tex` which makes use of a template
class `twentysecondcv.cls`.

This project also contains a `Makefile` for locally building the resume, and a GitHub workflow
for automating its build, upload as an artifact and official release (when tags are used).

For more information, please contact its owner: [**RobPasMue**](https://github.com/RobPasMue).

## Local build on Linux

A `Makefile` for allowing local builds of the resume is provided. In order to use it, the following
requirements are needed:

* The package `latexmk`
* The package `texlive-fonts-extra`

For installing them, just run the following commands on Ubuntu:

```bash
sudo apt-get update -y
sudo apt-get install -y latexmk texlive-fonts-extra
```

Once installed, go to the root directory of the repository and run:

```bash
make all
```

This will automatically generate the resume at the `src/cv/out` folder. This command also cleans up
pre-existing compilations. If you want to clean it manually you can also run `make clean`. However,
`make all` will first clean the output directory and then run the compilation, so that there are no
conflicts with old files.

Enjoy building your resume locally!
