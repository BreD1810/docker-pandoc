FROM microsoft/vsts-agent:ubuntu-16.04

RUN apt-get -y update
RUN apt-get -y install pandoc texlive-latex-base texlive-extra-utils texlive-font-utils texlive-fonts-extra biber make

CMD /bin/sh
