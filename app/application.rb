class Application

  def call(env)
    resp = Rack::Response.new

    current_time = Time.now

    (current_time.hour >= 12) and (current_time.hour <= 24)

    if current_time == true
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
