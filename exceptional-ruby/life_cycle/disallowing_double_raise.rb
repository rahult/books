module NoDoubleRaiseSir
  def error_handled!
    $! = nil
  end

  def raise(*args)
    if $! && args.first != $!
      warn "Double raise at #{caller.first}, aborting"
      exit! false
    else
      super
    end
  end
end

class Object
  include NoDoubleRaiseSir
end
