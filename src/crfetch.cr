require "shell"
require "./crfetch/**"

module Fetch
  VERSION = "0.1.6"
  OS_G    = Fetch::OS.new.to_s

  #
  # ASCII of Disctro or OS Logo
  #
  puts Fetch::ASCII.new

  #
  # CPU - Info about your CPU
  #
  cpu = Fetch::CPU.new
  puts "CPU: #{Shell.run(cpu.cpu_info)}"
  puts "Logical Cores: #{Shell.run(cpu.cpu_core_log)}"
  puts "Physical Cores: #{Shell.run(cpu.cpu_core_phy)}"

  #
  # Memory - Info about your computer's memories
  #
  mem = Fetch::Memory.new
  puts "Total Memory: #{Shell.run(mem.total)}"

end
