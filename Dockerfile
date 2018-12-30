FROM elixir:1.7-alpine

RUN mkdir /livrodealemao
WORKDIR /livrodealemao

ENV PAGER='busybox more'

# Locale
ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_CTYPE=en_US.UTF-8 \
    LC_NUMERIC=en_US.UTF-8 \
    LC_TIME=en_US.UTF-8 \
    LC_COLLATE=en_US.UTF-8 \
    LC_MONETARY=en_US.UTF-8 \
    LC_MESSAGES=en_US.UTF-8 \
    LC_PAPER=en_US.UTF-8 \
    LC_NAME=en_US.UTF-8 \
    LC_ADDRESS=en_US.UTF-8 \
    LC_TELEPHONE=en_US.UTF-8 \
    LC_MEASUREMENT=en_US.UTF-8 \
    LC_IDENTIFICATION=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8

# Basics and Timezone
RUN apk add --update --no-cache inotify-tools nodejs tzdata vim yarn && \
    cp /usr/share/zoneinfo/Europe/Berlin /etc/localtime && \
    echo "Europe/Berlin" > /etc/timezone && \
    apk del tzdata && \
    mix local.hex --force && \
    mix mix archive.install hex phx_new 1.4.0 --force && \
    mix local.rebar --force
    mix deps.get --force

EXPOSE 4000

CMD ["MIX_ENV=dev", "mix", "phx.server"]
