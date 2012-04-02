#!/usr/bin/env ruby

# name of command input fifo file
cmd_pipe='cmd'

# minecraft commandline
cmd = "exec java -Xmx1g -Xms1g -jar ../minecraft_server.jar < #{cmd_pipe} > /dev/null 2>&1"


# create fifo if it does not exist
unless File.exist? cmd_pipe
  unless system("mkfifo -m 600 #{cmd_pipe}")
    puts 'mkfifo failed'
    exit false
  end
end

# open fifo so that it will not be closed
open(cmd_pipe, 'w+')

# execute minecraft
exit system(cmd)
