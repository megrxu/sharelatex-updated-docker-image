# Base Docker Image
FROM sharelatex/sharelatex:latest

# Set mirror url
ARG CTAN_MIRROR=https://mirrors.zju.edu.cn/CTAN/systems/texlive/tlnet

# From https://www.tug.org/texlive/upgrade.html
RUN cp -a /usr/local/texlive/2017 /usr/local/texlive/2018
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/texlive/2018/bin/x86_64-linux/
RUN wget ${CTAN_MIRROR}/update-tlmgr-latest.sh
RUN tlmgr option repository ${CTAN_MIRROR}
RUN sh update-tlmgr-latest.sh -- --upgrade
RUN tlmgr update --self --all

# Other Packages
RUN tlmgr install scheme-full ; \
    tlmgr install latexmk

# Post installation
RUN rm -rf /usr/local/texlive/2017

