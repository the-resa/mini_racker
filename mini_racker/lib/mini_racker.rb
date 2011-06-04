require "mini_racker/railtie"

module MiniRacker
  
  class MyMiddleware
    def initialize(app)
      @app = app
    end

    def call(env)
      host = env["HTTP_HOST"]
      path = env["PATH_INFO"]

      if path.match /^\/admin/
        allowed_hosts = ["localhost", "127.0.0.1", "192.168."]
        
        unless host.match /^#{ allowed_hosts.each { |a| a.include?(a) } }/
          header = {}
          status = 403
          response = ["Forbidden"]
          [status, header, response]
        else
          @app.call(env)
        end
      else
        @app.call(env)
      end
    end
    
  end
end
