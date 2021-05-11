module Realiser
  class Engine < ::Rails::Engine
    isolate_namespace Realiser
    initializer 'realiser.assets.precompile' do |app|
      app.config.assets.precompile += %w[application.css]
    end
  end
end
