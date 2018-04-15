# Vim docker container

Vim configuration is not a trivial task. In addition, it may be different depending on distro. This dockerfile implements container with fully configured vim text editor.
The container is based on fedora. It contains:

- vim
- powerline
- pathogen
- nerdtree (as well as nerd-fonts)
- themes
  - atom-dark
  - base16 (default)
- devicons

To build container you must set username for a user.

```bash
docker build -t vim --build-arg USERNAME=${USER} .
```

The build process may take some time. Mostly because it downloads nerd-fonts, which is huge.

You can run container with the following command. It will mount dev directories, as well as git config and ssh keys. It is needed to make git work properly inside the container.

```
docker run \
  -ti \
  --name vim \
  --volume /home/andrii/dev:/home/andrii/dev:rw \
  --volume /home/andrii/bin:/home/andrii/bin:rw \
  --volume /home/andrii/.gitconfig:/home/andrii/.gitconfig \
  --volume /home/andrii/.ssh:/home/andrii/.ssh \
    vim /bin/bash
```
