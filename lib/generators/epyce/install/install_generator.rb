module Epyce
  module Generators
    class InstallGenerator < ::Rails::Generators::Base

      desc "This generator install default haml application layout and several files in public"
      source_root File.expand_path('../../template', __FILE__)

      def copy_layout
        say_status("Copying", "application layout files", :green)
        ["application.html.haml", "_header.html.haml", "_footer.html.haml", "_flashes.html.haml"].each do |f|
          copy_file "app/views/layouts/#{f}", "app/views/layouts/#{f}"
        end
      end

      def copy_assets
        say_status("Copying", "assets files", :green)
        ["apple-touch-icon-114x114-precomposed.png", "apple-touch-icon-57x57-precomposed.png", "apple-touch-icon-72x72-precomposed.png", "apple-touch-icon-precomposed.png", "apple-touch-icon.png", "favicon.png" ].each do |f|
          copy_file "app/assets/#{f}", "app/assets/#{f}"
        end
      end

      def copy_public
        say_status("Copying", "public files", :green)
        ["crossdomain.xml" ].each do |f|
          copy_file "public/#{f}", "public/#{f}"
        end
      end

      def copy_javascripts
        say_status("Copying", "javascripts loaders", :green)
        ["epyce-libs-debug.js.coffee", "epyce-libs.js.coffee", "epyce.js.coffee" ].each do |f|
          copy_file "app/assets/javascripts/#{f}", "app/assets/javascripts/#{f}"
        end
      end

      def copy_css
        say_status("Copying", "stylesheets loaders", :green)
        ["epyce.css.sass" ].each do |f|
          copy_file "app/assets/stylesheets/#{f}", "app/assets/stylesheets/#{f}"
        end
      end


    end
  end
end
