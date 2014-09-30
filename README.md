genelinux
=======================

Docker image for GeneLinux

Run
---

Run IPython Notebook server (default command).

    docker run -d -p 8080:8888 dritoshi/genelinux

Run IPython Notebook server to share local file system.

    docker run -d -p 8080:8888 -v $PWD:/notebook dritoshi/genelinux

Use interactive shell.

    docker run -it genelinux ipython

Build
-----

    docker build -t genelinux .

Copyright
-----
This software is released under the MIT License, see LICENSE.
A part of Dockerfile and ipython-notebook-startup.sh were refered from
[kitazaki/python34-ipython](https://github.com/skitazaki/docker-python34-ipython)
