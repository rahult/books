require 'yaml'

at_exit do
  if $!
    open('crash.log', 'a') do |log|
      error = {
        :timestamp => Time.now,
        :message   => $!.message,
        :backtrace => $!.backtrace,
        :gems      => Gem.loaded_specs.inject({}) {
          |m, (n,s)| m.merge(n => s.version)
        }
      }
      YAML.dump(error, log) 
    end
  end
end

raise "Doh!"
