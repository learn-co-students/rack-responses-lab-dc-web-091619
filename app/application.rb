#if before noon, greet user "Good Morning!"
#if after noon "Good Afternoon!"

class Application

    def call (env)
        resp = Rack::Response.new
        #new rack response object
        if Time.now.hour < 12
            resp.write "Good Morning!"
        else 
            resp.write "Good Afternoon!"
        end
        resp.finish
        #completes the response object
        #write can be called many times to build up full response
        #response not sent back to user until finish is called. 
    end
    #rackup config.ru to run it
    #control + c to exit
    #port=9292
    #localhost:9292

end
