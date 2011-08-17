Epyce
=====

**WARNING:**
HTML5S project is dead and will be replaced by [https://github.com/damln/Epycea](epycea), adding dynamic behaviors and valuable sass mixins. Future release of **epyce** (0.9.0) will include these changes and will deprecate code in epyce.css (reset.css, screen.css and obile.css)

HTML Epyce is a a rails layout including configurable Skeleton, HTML5S and knockout.js

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

    gem "epyce", "~> 0.8.3"

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

Changes in assets pipeline default behavior
===========================================
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

Configure Skeleton big screens width
====================================
You can use **Skeleton** with dynamic behavior on big screen by changing values in `app/assets/stylesheets/epyce.css.sass`

	$skeleton_global_width: 960px
	$skeleton_column_margin_left: 10px
	$skeleton_column_margin_right: 10px
	$skeleton_row_margin_bottom: 20px

Due to bug [https://github.com/nex3/sass/issues/46](#46) in sass I have fixed skeleton to 960px when screen width goes below 1200px.
This mean for example you set `$skeleton_global_width: 1350px`, skeleton will use autoresponsive width like this :

    | screen width  | skeleton effective width |
    |    1400       |           1350           |
    |    1300       |           1350           |
    |    1200       |           1350           |
    |    1199       |            960           |
    |     950       |            768           |


Todo
====
* replace HTML5S with [https://github.com/damln/Epycea](epycea)
* write namespace based pre-compile for production ENV. This way all Assets should be precompiled again in prod with code conflict
* Still need to place the icons in the right location
* create a epyce-knockout gem and depend on it
* Helpers for knockout.js
* create a epyce-backbone gem to integrate backbone.js

License
=======
[http://creativecommons.org/licenses/by/3.0](http://creativecommons.org/licenses/by/3.0)

