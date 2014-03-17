FROM ubuntu:12.04
RUN mkdir -p /var/lib/tsuru/base
ADD add-key          /var/lib/tsuru/add-key
ADD config           /var/lib/tsuru/config
ADD hooks.py         /var/lib/tsuru/hooks.py
ADD requirements.txt /var/lib/tsuru/requirements.txt
ADD so_dependencies  /var/lib/tsuru/so_dependencies
ADD utils            /var/lib/tsuru/utils
ADD scripts/deploy  /var/lib/tsuru/base/deploy
ADD scripts/install /var/lib/tsuru/base/install
ADD scripts/restart /var/lib/tsuru/base/restart
ADD scripts/setup   /var/lib/tsuru/base/setup
ADD scripts/start   /var/lib/tsuru/base/start
