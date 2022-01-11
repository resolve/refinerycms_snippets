module Refinery
  module Snippets
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Snippets

      engine_name :refinery_snippets

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "snippets"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.snippets_admin_snippets_path }
          plugin.pathname = root
          config.assets.precompile << [
            'refinery/snippets/snippets'
          ]
        end

        Rails.application.config.assets.precompile += %w(
          refinery/snippets/snippets.scss
          refinery/snippets/snippets.js
        )
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Snippets)
      end
    end
  end
end
