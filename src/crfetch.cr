require "shell"
require "./crfetch/**"

module Fetch
  VERSION = "0.1.1"
  @@os : String = ""
  @@os = Fetch::OS.new
  puts @@os

  # if flags.cpu, plus default
  print "CPU: "
  puts Shell.run(Fetch::CPU.new(@@os).to_s)

  # print "CPU Logical Cores: "
  # puts Shell.run(cpu_core_log)

  # print "CPU Physical Cores: "
  # puts Shell.run(cpu_core_log)

  # Todo:
  # Add Logic based on Admiral flags
  # Migrate the prints and puts to Crystal tablo cli tool
end
