Annotator Store
===============

Rails engine to implement a Ruby backend store implementation for
[Annotator][annotator].

In case you were wondering:

> Annotator an open-source JavaScript library to easily add annotation
> functionality to any webpage. Annotations can have comments, tags, links,
> users, and more. Annotator is designed for [easy extensibility][1] so its a
> cinch to add a new feature or behaviour. Annotator also fosters an active
> developer community with contributors from four continents, building 3rd party
> plugins allowing the annotation of PDFs, EPUBs, videos, images, sound, and
> more.


Dependecies & Versions
----------------------

3rd party dependencies are specified in the `annotator_store.gemspec` file.

Make sure you have [bundler][bundler] installed and then run `bundle install` on
the gem.


Development
-----------

There's a smaller dummy application created inside it at `spec/dummy`. This
application is used as a mounting point for the engine, to make testing the
engine on a Rails app extremely simple.

This directory should be treated like a typical Rails testing environment,
allowing for unit, functional and integration tests.

You can see what the engine has so far by running `rails server` in `spec/dummy`
and then browse to `http://localhost:3000/`.


[annotator]: http://annotatorjs.org/
[bundler]: http://bundler.io

[1]: http://docs.annotatorjs.org/en/latest/hacking/plugin-development.html
