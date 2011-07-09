def foo
  begin
    raise RuntimeError, "Very bad boy! No return you within ensure"
  rescue => e
    puts "Order Matters, I am going to let you go to Rumtime Rescue block, because I am going to absorb you and spit you back."
  rescue StandardError => e
    puts "Order Matters, I am going to let you go to Rumtime Rescue block, because I am going to absorb you and spit you back."
  rescue RuntimeError => e
    puts "Error Rescued"
  end
end

p foo
