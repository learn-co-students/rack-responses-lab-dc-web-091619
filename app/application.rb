class Application

    def call(env)
        resp = Rack::Response.new
     
        time = Time.now
        resp.write time
     
        if time.hour > 0 && time.hour < 12
          resp.write "\nGood Morning!"
        else
          resp.write "\nGood Afternoon!"
        end
     
        resp.finish
    end

  end