#!/usr/bin/env ruby
#
# Sort files in cwd by the date expressed in the filename 
#

require 'chronic'
require 'optparse'
 
options = {}
optparse = OptionParser.new do |opts|
  opts.banner = "Usage: lsByDate [-r|--reverse]"
  options[:reverse] = false
  opts.on( '-r', '--reverse', 'reverse order (recent first)' ) do
    options[:reverse] = true
  end
  opts.on( '-h', '--help', 'show this help' ) do
    puts opts
    exit
  end
end.parse!

files= `ls`.split /\n/
files.delete_if {|x| x.empty?} 

$getDateOf = lambda { |f| 
  f = f.sub(/(\.|[a-z])+/i, '')
  Chronic.parse(f, :guess => true)
}

fileAndDate = files.map { |f| [f, $getDateOf.call(f) ] } 

fileAndDate.sort! { |x, y| (x[1] && y[1]) ? x[1] <=> y[1] : x[1] ? 1 : -1 }

if options[:reverse] ; fileAndDate = fileAndDate.reverse; end

fileAndDate.each { |x| puts x[0] }

