# jRuby + Torquebox 4 Docker Image

As some people enjoy heresy better than sanity 😈, I decided to build a simple docker image featuring a torquebox 4 server
running over a jRuby interpreter. You can find this image on [Docker Hub](https://hub.docker.com/r/tcharbonnel/jruby-torquebox4/).

It's fully functional, but I'd like to release some improvements. I'll probably tweak the `start_server.sh` script to
make the use of jRuby/torquebox transparent from the app. This will take some time, as some gems only exist on MRI, and
others only on jRuby.

## Docker Run

Using this image is pretty straight-forward. To start a local server listening on port `1234` with your app in `/path/to/my/app`,
just run:

```bash
docker run -it -v /path/to/my/app:/app -p 1234:8080 tcharbonnel/jruby-torquebox4
```

## Docker Compose

```yml
version: '2'
services:
  web:
    image: tcharbonnel/jruby-torquebox4
    volumes:
      - /path/to/my/app:/app
    ports:
      - "1234:8080"
```
