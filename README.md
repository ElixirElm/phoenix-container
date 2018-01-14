Phoenix 1.3 or later docker container

Usage
=====
```
docker run elixirelm/phoenix-container iex
docker run elixirelm/phoenix-container elixir
```
Building & Releasing
====================
```
docker build -t elixirelm/phoenix-container:1.3_1.4.5 .
git push
docker push elixirelm/phoenix-container:1.3_1.4.5
git checkout master
git merge docker 1.3_1.4.5
git push
docker tag elixirelm/phoenix-container:1.3_1.4.5 elixirelm/blorg:latest
docker push elixirelm/phoenix-container:latest
```
