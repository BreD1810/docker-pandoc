FROM archlinux/base

RUN pacman -Syyu --noconfirm reflector && \
	reflector --age 12 --sort rate --save /etc/pacman.d/mirrorlist && \
	pacman -Syu --noconfirm \
		pandoc \
		texlive-core \
		texlive-pictures \
		texlive-bibtexextra \
		texlive-pstricks \
		texlive-latexextra \
		ca-certificates \
		biber \
		make \
		curl \
		git \
		git-lfs \
		inkscape \
		librsvg && \
	pacman -Scc --noconfirm && \
	rm -rf /var/lib/pacman/sync /tmp/* /var/tmp/*

CMD /bin/sh
