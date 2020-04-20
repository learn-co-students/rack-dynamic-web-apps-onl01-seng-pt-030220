class Application

  def call(env)
    resp = Rack::Response.new
    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)
    if num_1 == num_2 && num_2 == num_3
      slot_resp = "You Win"
    else
      slot_resp = "You Lose"
    end
    resp.write "#{num_1} #{num_2} #{num_3} \n#{slot_resp}"
    resp.finish
  end

end
