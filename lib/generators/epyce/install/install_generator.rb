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

      def copy_public
        say_status("Copying", "application layout files", :green)
        ["apple-touch-icon-114x114-precomposed.png", "apple-touch-icon-57x57-precomposed.png", "apple-touch-icon-72x72-precomposed.png", "apple-touch-icon-precomposed.png", "apple-touch-icon.png", "crossdomain.xml", "favicon.png" ].each do |f|
          copy_file "public/#{f}", "public/#{f}"
        end
      end

    end
  end
end
