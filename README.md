# Jekyll Toolkit

Running a [dockerised development environment](https://github.com/willpower232/dockeriseddevelopmentenvironment) and wanting to make use of [Jekyll](https://jekyllrb.com), I was inspired by [BretFisher/jekyll-serve](https://github.com/BretFisher/jekyll-serve) to make something that fit in and could be re used for multiple sites.

## How to use

Download the image

`docker pull gchr.io/willpower232/jekyll-toolkit`

Create your new Jekyll site

`docker run -it --rm -v $(pwd):/site jekyll-toolkit jekyll new .`

Then reference it with docker-compose.yml (example in this repository).

## Building

`docker build -t jekyll-toolkit .`
