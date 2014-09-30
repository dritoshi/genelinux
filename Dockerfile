FROM ubuntu:14.04
MAINTAINER Shigeru Kitazaki <skitazaki@gmail.com>

RUN apt-get update
RUN apt-get upgrade -y

# `python3-pip` depends on `python3-devel`.
RUN apt-get install -y python3-pip libfreetype6-dev libxft-dev
RUN apt-get install -y gfortran libopenblas-dev liblapack-dev

# Exporting HTML requires either of Node.JS or Pandoc.
RUN apt-get install -y nodejs
RUN apt-get clean

# Use `pip` to make sure latest versions.
RUN pip3 install pyzmq
RUN pip3 install numpy
RUN pip3 install matplotlib
RUN pip3 install pandas
RUN pip3 install scipy
RUN pip3 install scikit-learn
RUN pip3 install networkx
RUN pip3 install Sphinx
RUN pip3 install ipython[notebook]

# For IPython Notebook to share resources with host.
EXPOSE 8888
VOLUME ["/notebook"]
ADD ipython-notebook-startup.sh /usr/local/bin/ipython-notebook-startup.sh

CMD ["ipython-notebook-startup.sh" , "/notebook"]

