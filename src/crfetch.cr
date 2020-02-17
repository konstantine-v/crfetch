require "shell"
require "./crfetch/**"

module Fetch
  VERSION = "0.1.5"
  OS_G    = Fetch::OS.new.to_s

  #
  # CPU - In fo about your CPU
  #
  cpu = Fetch::CPU.new
  print "CPU: "
  puts Shell.run(cpu.cpu_info)
  print "Logical Cores: "
  puts Shell.run(cpu.cpu_core_log)
  print "Physical Cores: "
  puts Shell.run(cpu.cpu_core_phy)
end
