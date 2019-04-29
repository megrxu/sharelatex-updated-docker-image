# ShareLaTeX Updated Docker Image

## From

- [Upgrade from TeX Live 2017 to 2018](https://www.tug.org/texlive/upgrade.html)
- [ShareLaTeX](https://github.com/sharelatex/sharelatex)

## Build

`docker build --build-arg CTAN_MIRROR=https://mirrors.zju.edu.cn/CTAN/systems/texlive/tlnet --tag sharelatex-updated .`