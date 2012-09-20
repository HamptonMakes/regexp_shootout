
(["go", "tcl", "rubex"].collect do |lib|
  start = Time.now
  script = %|
    cd #{lib}
    make
    for i in {1..100}
    do
       ./#{lib} < ../regexdna-input.txt
    done|
  `#{script}`
  [lib, Time.now - start]
end).each do |lib, result|
  puts "#{lib}: #{result}"
end

