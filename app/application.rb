class Application

  def call(env)
     resp = Rack::Response.new

     num_1 = Time.now.hour

     if num_1 < 12
       resp.write "Good Morning!"
     elsif num_1 > 12
       resp.write "Good Afternoon!"
     else
       resp.write "Good Noon!"
     end

     resp.finish
   end


end
