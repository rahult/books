d = Dir.new("/Users/rahult/.rvm/src/ruby-1.9.2-p180")
entries = d.entries
p entries.delete_if {|entry| entry =~ /^\./ }
p entries.map! { |entry| File.join(d.path, entry) }
p entries.delete_if { |entry| !File.file?(entry) }
print "Total bytes: "
puts entries.inject(0) { |total, entry| total + File.size(entry) }
