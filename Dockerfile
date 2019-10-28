FROM bitnami/minideb:stretch

RUN apt-get -y update && \
    apt-get -y install --no-install-recommends \
        pandoc \
        texlive \
        texlive-pictures \
        texlive-bibtex-extra \
        texlive-pstricks \
        texlive-latex-extra \
        poppler-utils \
        inkscape \
        librsvg2-2 \
        ca-certificates \
        biber \
        make \
        curl \
        git \
        bash && \
    curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash && \
    apt-get install git-lfs && \
    apt-get -yq autoremove && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD /bin/sh
