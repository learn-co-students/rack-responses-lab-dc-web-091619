
class Application

  def call (env)
    resp = Rack::Response.new
    t = Time.now

    if t.strftime('%k').to_i >= 0 && t.strftime('%k').to_i < 12
      resp.write "\nGood Morning!"
    else
      resp.write "\nGood Afternoon!"
    end

    resp.finish
  end

end