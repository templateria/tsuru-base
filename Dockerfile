FROM ubuntu:12.04
RUN mkdir -p /var/lib/tsuru/base
RUN mkdir /var/run/sshd

# required scripts that cannot be removed in derived images
ADD scripts/hooks.py /var/lib/tsuru/hooks.py
ADD scripts/add-key  /var/lib/tsuru/add-key

# base scripts that need to be overridden in derived images
ADD scripts/install /var/lib/tsuru/base/install
ADD scripts/setup   /var/lib/tsuru/base/setup

# base scripts that can be symlinked to or ignored in derived images
ADD scripts/deploy  /var/lib/tsuru/base/deploy
ADD scripts/restart /var/lib/tsuru/base/restart
ADD scripts/start   /var/lib/tsuru/base/start

RUN /var/lib/tsuru/base/install
RUN /var/lib/tsuru/base/setup
