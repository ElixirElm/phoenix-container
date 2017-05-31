FROM elixir:1.4.4

RUN \
  curl -sL https://deb.nodesource.com/setup_7.x | bash - && \
  apt-get install -y nodejs && \
  apt-get clean && \
  cd /var/lib/apt/lists && rm -fr *Release* *Sources* *Packages* && \
  truncate -s 0 /var/log/*log

ENV PHOENIX_VERSION ""

RUN \
  echo "Phoenix 1.3.0-rc.2" && \
  mix local.hex --force && \
  mix local.rebar --force && \
  mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez

ENV MYAPP_DIR "/myapp"
ENV MIX_ENV "prod"

CMD ["iex"]
