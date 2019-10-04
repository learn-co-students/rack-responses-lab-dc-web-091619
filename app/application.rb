require 'date'
require 'pry'
class Application

  def call(env)
   #Date_time
   resp = Rack::Response.new
   now = Time.now
    if now.hour <= 12 
         resp.write "Good Morning!"
    else
    # if now 
        resp.write "Good Afternoon!"
    # else

     end
     resp.finish
  end
end
