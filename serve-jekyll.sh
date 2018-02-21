#!/bin/sh
bundle exec jekyll build
bundle exec jekyll serve --watch --incremental
