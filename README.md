Annotator Store
===============

Rails engine to implement a backend store for [Annotator][annotator].


Dependecies & Versions
----------------------

3rd party dependencies are specified in the `annotator_store.gemspec` file.

Make sure you have [bundler][bundler] installed and then run `bundle install` on
the gem.


Development
-----------

There's a smaller dummy application created inside it at `spec/dummy`. This
application is used as a mounting point for the engine, to make testing the
engine extremely simple.

The test directory should be treated like a typical Rails testing environment,
allowing for unit, functional and integration tests.


[annotator]: http://annotatorjs.org/
[bundler]: http://bundler.io
