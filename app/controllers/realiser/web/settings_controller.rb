module Realiser
  module Web
    class SettingsController < Realiser::Web::ApplicationController
      def index; end

      def new
        render plain: 'Yep!'
      end
    end
  end
end
