# Build a docker image used for testing zimports.el on CircleCI
# Available from https://hub.docker.com/repository/docker/schmir/emacs-zimports-test
#
# Build with:
#   docker build --no-cache -t schmir/emacs-zimports-test .
# Upload with:
#   docker push schmir/emacs-zimports-test
#

FROM cimg/base:stable
RUN sudo add-apt-repository ppa:kelleyk/emacs \
        && sudo apt-get update \
        && sudo apt-get install -y python3-pip emacs26-nox \
        && sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.6 100 \
        && sudo rm -rf /var/lib/apt/lists/*
RUN pip3 install --user zimports
RUN curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python3
ENV PATH="/home/circleci/.cask/bin:${PATH}"
