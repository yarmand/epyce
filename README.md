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
    app/views/layouts/_footer.html.haml
    app/views/layouts/_flashes.html.haml

    public/apple-touch-icon-114x114-precomposed.png
    public/apple-touch-icon-57x57-precomposed.png
    public/apple-touch-icon-72x72-precomposed.png
    public/apple-touch-icon-precomposed.png
    public/apple-touch-icon.png
    public/crossdomain.xml
    public/favicon.png

License
=======
[http://creativecommons.org/licenses/by/3.0](http://creativecommons.org/licenses/by/3.0)

