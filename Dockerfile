FROM microsoft/vsts-agent:ubuntu-16.04

RUN sudo apt update
RUN sudo apt install pandoc texlive-latex-base texlive-extra-utils texlive-font-utils texlive-fonts-extra biber

CMD /bin/sh
