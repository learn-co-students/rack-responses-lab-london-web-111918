class Application

  def call(env)
    resp = Rack::Response.new

    num = Kernel.rand(1..24)

    resp.write "#{num}\n"

    if num >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end

end
