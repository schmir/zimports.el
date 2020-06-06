from cimg/base:stable
RUN sudo add-apt-repository ppa:kelleyk/emacs
RUN sudo apt-get update
RUN sudo apt-get install -y python3-pip emacs26-nox
RUN sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.6 100
RUN pip3 install --user zimports
RUN curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python3
ENV PATH="/home/circleci/.cask/bin:${PATH}"
