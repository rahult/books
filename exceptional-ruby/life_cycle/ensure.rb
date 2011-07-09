def foo
  begin
    raise Exception, "Very bad boy! No return you within ensure"
  ensure
    return "Messed up"
  end
end

p foo
