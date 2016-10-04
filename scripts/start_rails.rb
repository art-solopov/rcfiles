#!/usr/bin/env ruby

session_name = Dir.getwd.sub(ENV['HOME'], '').sub(/^\/?projects?\//i, '')
               .tr('/', '__')

system({'DISABLE_AUTO_TITLE' => 'true'},
       'tmux', '-2', 'new-session', '-s', session_name, '-d')

