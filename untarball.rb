#!/usr/bin/ruby

case ARGV.size
  when 1
    archive = ARGV[0]
    command = "tar -zxvf #{archive}"
    puts "extracting \"#{archive}\" with \"#{command}\""
    system(command)
  when 2
    archive = ARGV[0]
    target = ARGV[1..-1].join ' '
    command = "tar -zxvf #{archive} #{target}"
    system(command)
  else
    puts "usage:"
    puts "untarball archive-filename"
    puts "untarball archive-filename target-filename(s)"
end