module Realiser
  module Web
    class SettingsController < Realiser::Web::ApplicationController
      def index
        render plain: 'Hello'
      end
    end
  end
end