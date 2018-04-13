FROM fedora

ARG USERNAME
ARG USERUID=1000

ENV USERHOME=/home/${USERNAME}

RUN dnf update -y && \
    dnf install -y \
      vim vim-powerline docker-vim vim-common \
      sudo \
      git \
      curl \
      procps \
      findutils \
      tree \
      && \
    dnf clean all && \
    groupadd ${USERNAME} && \
    useradd -r -u ${USERUID} -g ${USERNAME} -G wheel ${USERNAME} && \
      sed -e 's/#\s*\(%wheel\s*ALL=(ALL)\s*NOPASSWD:\s*ALL\)/\1/' -i /etc/sudoers && \
    mkdir -p ${USERHOME}/.vim/autoload ${USERHOME}/.vim/bundle ${USERHOME}/.vim/colors && \
      curl -LSso ${USERHOME}/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \
        git clone https://github.com/scrooloose/nerdtree.git ${USERHOME}/.vim/bundle/nerdtree && \
        git clone https://github.com/ryanoasis/vim-devicons ${USERHOME}/.vim/bundle/vim-devicons && \
        git clone https://github.com/gosukiwi/vim-atom-dark.git && \
          mv vim-atom-dark/colors/atom-dark* ${USERHOME}/.vim/colors/ && \
          rm -rf vim-atom-dark && \
        git clone https://github.com/chriskempson/base16-vim.git ${USERHOME}/.vim/bundle/base16-vim && \
        git clone https://github.com/ryanoasis/nerd-fonts.git ${USERHOME}/nerd-fonts --depth=1 && \
        chown -R ${USERNAME}:${USERNAME} ${USERHOME} && \
          cd ${USERHOME}/nerd-fonts/ && su ${USERNAME} -c "./install.sh UbuntuMono" && \
          rm -rf ${USERHOME}/nerd-fonts

ADD .bashrc ${USERHOME}/
ADD .vimrc ${USERHOME}/
ADD .vimrc /root/

USER ${USERNAME}

WORKDIR ${USERHOME}
