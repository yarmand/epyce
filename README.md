Epyce
=====

HTML Epyce is a a rails layout including skeleton, HTML5S and knockout.js

* skeleton (http://www.getskeleton.com/)
  support png background for old IE
* part of Damian Le Nouaille HTML5S project (https://github.com/damln/Html5S) which itself take parts of html5 boilerplate (http://html5boilerplate.com)
* depends on haml gem (http://haml-lang.com/)

Provide a `application.html.haml` layout and some useful files in the public directory such as default icons.

Epyce include libs in debug mode when running in development environment and with minimal version of libs otherwise.

Provided libs are :

* knockout.js (http://knockoutjs.com)
  Model-View-ViewModel pattern implementation
* head.js (http://headjs.com/)
  html reset and javascript load/run management
* Underscore.js (http://documentcloud.github.com/underscore)
  provides a lot of the functional programming


For update Infos,  follow [http://twitter.com/epyce](@epyce) on twitter

Rails Installation
==================

First, make sure the following gems are in your Gemfile

    gem "epyce", "~> 0.6.0"
    gem "haml"

Then run the following

    bundle install
    rails generate epyce:install

**Here's a list of the files generator install in your Rails project:**

    app/views/layouts/application.html.haml
    app/views/layouts/_header.html.haml
    app/views/layouts/_header.html.haml
    app/views/layouts/_footer.html.haml
    app/views/layouts/_flashes.html.haml

    public/apple-touch-icon-114x114-precomposed.png
    public/apple-touch-icon-57x57-precomposed.png
    public/apple-touch-icon-72x72-precomposed.png
    public/apple-touch-icon-precomposed.png
    public/apple-touch-icon.png
    public/favicon.png

    public/crossdomain.xml

    app/assets/javascripts/epyce-libs-debug.js.coffee
    app/assets/javascripts/epyce-libs.js.coffee
    app/assets/javascripts/epyce.js.coffee

    app/assets/stylesheets/epyce.css.sass

Documentation
=============
Epyce change the default asset pipeline behavior included in `application.html.erb` and do not include `application.js` or `application.css`.

The layout `application.html.haml` include thiner grained assets (see `epyce.js.coffee` and `epyce.css.sass`) :

* all files in folders
    * `app/assets/javascripts/application`
    * `app/assets/stylesheets/application`

* css and javascript common for all views in a controller

    * `app/assets/javascripts/__controller_name__.js[.coffee]`
    * `app/assets/stylesheets/__controller_name__.js[.sass|.scss]`

* css and javascript for the actual view

    * `app/assets/javascripts/__controller_name__/__action_name__.js[.coffee]`
    * `app/assets/stylesheets/__controller_name__/__action_name__.js[.sass|.scss]`

You can **customize** what javascript libs are loaded by editing

    app/assets/javascripts/epyce-libs-debug.js.coffee
    app/assets/javascripts/epyce-libs.js.coffee

You can **customize** what css  are loaded by editing

    app/assets/javascripts/epyce.css.sass


Todo
====
* Still need to place the icons in the right location
* Helpers for knockout.js

License
=======
[http://creativecommons.org/licenses/by/3.0](http://creativecommons.org/licenses/by/3.0)

