require "pry"
class Application

    def call(env)
        resp = Rack::Response.new
        time = Time.now     #saves the current time to a variable

        if time.hour > 12
            resp.write "Good Afternoon!"    #resp.write prints to the console
        elsif time.hour < 12 
            resp.write "Good Morning!"
        end

        resp.finish #the response isnt sent back to the user until finish is called. 
    end
end
