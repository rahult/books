begin
  begin
    raise "Error A"
  rescue => error
    puts "Same error: " + error.object_id.to_s(16)
    raise error
  end
rescue => error
  puts "Same error: " + error.object_id.to_s(16)
end


begin
  begin
    raise "Error A"
  rescue => error
    puts error.inspect + ": " + error.object_id.to_s(16)
    raise error, "Error B"
  end
rescue => error
  puts error.inspect + ": " + error.object_id.to_s(16)
end


begin
  begin
    raise "Error C"
  rescue => error
    puts error.backtrace.first
    raise error, "Error B", ["FAKE:42"]
  end
rescue => error
  puts error.backtrace.first
end
