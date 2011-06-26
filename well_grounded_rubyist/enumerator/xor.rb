class String
  def ^(key)
    kenum = key.bytes.cycle
    bytes.map { |byte| byte ^ kenum.next }.pack("C*").
                       force_encoding(self.encoding)
  end
end

str = "Nice little string."
key = "secret!"

x = str ^ key
p x

orig = x ^ key
p orig
