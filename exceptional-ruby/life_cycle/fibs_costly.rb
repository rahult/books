def fib(n)
  return n if n < 2
  vals = [0, 1]
  n.times do
    vals.push(vals[-1] + vals[-2])
  end
  vals.last
end

def fib_with_rescue(n)
  return n if n < 2
  vals = [0, 1]
  i = 0
  n.times do
    vals.push(vals[-1] + vals[-2])
    i =+ 1
    raise if i >= n
  end
  return vals.last
rescue RuntimeError
  puts vals.last
end

require 'benchmark'
Benchmark.bm(10) do |bm|
  bm.report("no rescue") { 1000.times { fib(100) } }
  bm.report("rescue") { 1000.times { fib_with_rescue(100) } }
end
