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

    # @@items = ["Apples", "Carrots", "Pears"]

    # def call(env)
    #     resp = Rack::Response.new
    #     req = Rack::Request.new(env) 

    #     if req.path.match(/items/)
    #         @@items.each do |item|
    #             resp.write "#{item}\n"
    #         end
    #     elsif req.path.match(/search/)
    #         search_term = req.params['q']

    #         if @@items.include?(search_term)
    #             resp.write "#{search_term} is one of our items"
    #         else
    #             resp.write "Couldn't find #{search_term}"
    #         end
    #     else
    #         resp.write "Path Not Found"
    #     end

    #     resp.finish
    # end
end
