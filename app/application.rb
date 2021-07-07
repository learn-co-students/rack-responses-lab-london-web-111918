class Application

  def call(env)
    resp = Rack::Response.new

    now = Time.now.strftime("%H:%M:%S")
    resp.write "It's #{now}!\n"

      if now > "12:00:01"
          resp.write "Good Afternoon!"
        else
          resp.write "Good Morning!"
      end

    resp.finish
  end
end
