require 'mini_racker'
require 'rails'

module MiniRacker
  
  class Railtie < Rails::Railtie
    config.mini_racker = "MiniRacker"
    initializer "miniracker.initialize" do |app|
      app.middleware.insert_before 0, MiniRacker::MyMiddleware
    end
  end

end