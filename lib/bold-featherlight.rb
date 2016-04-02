module Bold
  module Featherlight

    def self.render_asset_tags?
      Site.current.plugin_config(:featherlight).true? 'asset_tags'
    end

    class Engine < ::Rails::Engine

      config.to_prepare do

        Bold::Plugin.register(:featherlight) do
          name 'Featherlight'
          author 'Jens Krämer'
          author_url 'https://jkraemer.net/'

          settings partial: 'settings', defaults: {
            gallery_enabled: false,
            asset_tags: true,
          }

          assets %w( featherlight.js featherlight.css )

          render_on :view_layout_html_head, 'layout_html_head'
          render_on :view_layout_body_end, 'layout_body_end'

          content_class do |site, plugin_config, content|
            if plugin_config.true? 'gallery_enabled'
              'featherlight-gallery'
            else
              'featherlight-lightbox'
            end
          end

        end

      end

    end

  end
end
