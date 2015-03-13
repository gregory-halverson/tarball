#!/usr/bin/ruby

def generate(input, output)
  command = "tar -pczf #{output} #{input}"
  puts "generating \"#{output}\" with \"#{command}\""
  system(command)
end

case ARGV.size
  when 1
    generate(ARGV[0], File.basename(File.absolute_path(ARGV[0])) + '.tar.gz')
  when 2
    generate(ARGV[1], ARGV[0])
  else
    puts "usage:"
    puts "tarball input-file/directory"
    puts "tarball output-file input-file/directory"
end
