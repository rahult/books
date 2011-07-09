module RaiseExit
  def raise(msg_or_exc, msg=msg_or_exc, trace=caller)
    warn msg.to_s
    exit!
  end
end

module Kernel
  include RaiseExit
end
