FROM bitnami/minideb:stretch

RUN apt-get -y update && \
    apt-get -y install apt-utils && \
    apt-get -y install pandoc texlive-latex-base texlive-extra-utils texlive-font-utils texlive-fonts-extra biber make curl git bash && \
    curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash && \
    apt-get -yq autoremove && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD /bin/sh
