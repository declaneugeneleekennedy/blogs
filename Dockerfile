FROM elixir:1.6-alpine

RUN apk update && \
    apk add git build-base inotify-tools && \
    mix local.hex --force && \
    mix local.rebar --force && \
    mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez --force
