class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now
    if time.hour >= 12
      resp.write "Good Afternoon"
    else
      resp.write "Good Morning"
    end

    resp.finish
  end

end

# class Application 

#   @@items = %w(Apples Carrots Bananas)

#   def call(env)
#     req = Rack::Request.new(env)
#     resp = Rack::Response.new

#     if req.path.match(/items/)
#       @@items.each do |item|
#         resp.write "#{item}\n"
#       end

#     elsif req.path.match(/search/)
#       search_term = req.params["q"]

#       if @@items.include?(search_term)
#         resp.write ("#{search_term} is one of our items.")

#       else
#         resp.write ("Could not find #{search_term}")
#       end

#     else
#       resp.write "Path Not Found"
#     end
    
#     resp.finish
#   end

# end