Annotator Store
===============

[![Gem Version](https://badge.fury.io/rb/annotator-store.svg)][5]
[![Build Status](https://travis-ci.org/itsmrwave/annotator-store.svg?branch=master)][13]

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

The gem should be [up on RubyGems.org][5], the [CHANGELOG here][7] and [all the
releases listed here][8].


Dependecies & Versions
----------------------

3rd party dependencies are specified in the `annotator_store.gemspec` file.


Installation
------------

Add this line to your application's Gemfile:

    gem 'annotator-store'

And then execute:

    $ bundle install

Learn more about [bundler][4] and [Gemfiles][3].


Development
-----------

There's a smaller dummy application created inside it at `spec/dummy`. This
application is used as a mounting point for the engine, to make testing the
engine on a Rails app extremely simple. This directory should be treated like a
typical Rails testing environment, allowing for unit, functional and integration
tests.

The current dummy app uses Rails 4.1.6 and Postgres as a store. It's my hope
that the gem works at least for all Rails versions `>= 4.0.0` and other data
stores that Rails supports like SQLite, MySQL, MongoDB etc ... I guess we'll see
how it goes.

You can see what the engine has so far by running `rails server` in `spec/dummy`
and then browse to `http://localhost:3000/`.


Testing
-------

You may extend the dummy application by generating controllers, models or views
from within the directory (`spec/dummy`), and then use those to test our engine.
Use the rspec command to run your specs.


```
=> Change directory to dummy application
$ cd spec/dummy/

=> Run all specs
$ bundle exec rspec

=> Run only model specs example ...
$ bundle exec rspec spec/models

=> Run only specs for AnnotationsController ...
$ bundle exec rspec spec/controllers/annotations_controller_spec.rb
```

Testing is also [automated on Travis-CI][13].


Versioning
----------

Major version zero (0.y.z) is for initial development. Anything may change at
any time. The public API should not be considered stable.

Version 1.0.0 defines the public API. The way in which the version number is
incremented after this release is dependent on this public API and how it
changes as per [Semantic Versioning 2.0.0][semver].


Contributing
------------

Want to contribute to the code? First, have a look at the guide in the [CONTRIBUTING.md][9]
file for the workflow.

Then, here's some Annotator documentation to help you get up to speed:

* [Annotator Storage][10] API specifications.
* [Annotator Store Plugin][11] documentation.

In summary, this gem helps implement a store for the plugin to interact with.

Any code contributors will be [listed here][12].


License
-------

[King'ori J. Maina][2] © 2014. The MIT License bundled therein is a
permissive license that is short and to the point. It lets people do anything
they want as long as they provide attribution and waive liability.


[annotator]: http://annotatorjs.org/

[semver]: http://semver.org

[1]: http://docs.annotatorjs.org/en/latest/hacking/plugin-development.html
[2]: http://kingori.co/
[3]: http://bundler.io/gemfile.html
[4]: http://bundler.io
[5]: https://rubygems.org/gems/annotator-store
[6]: http://rubydoc.info/gems/annotator-store/frames/
[7]: https://raw.githubusercontent.com/itsmrwave/annotator-store/master/CHANGELOG.md
[9]: https://raw.githubusercontent.com/itsmrwave/annotator-store/master/CONTRIBUTING.md
[8]: https://github.com/itsmrwave/annotator-store/releases
[10]: http://docs.annotatorjs.org/en/v1.2.x/storage.html
[11]: http://docs.annotatorjs.org/en/v1.2.x/plugins/store.html
[12]: https://github.com/itsmrwave/annotator-store/graphs/contributors
[13]: https://travis-ci.org/itsmrwave/annotator-store
