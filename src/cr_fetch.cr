require "xml"
require "shell"

module CrFetch
  VERSION = "0.1.1"

  os = "MacOS" #Change to actually
  case os
  when "Linux" || "Windows"
    puts "tbd"
  when "MacOS"
    cpu_sys="sysctl -n machdep.cpu.brand_string"
    cpu_cores_log="sysctl -n hw.logicalcpu_max"
    cpu_cores_log="sysctl -n hw.physicalcpu_max"

    print "CPU: "
    puts Shell.run(cpu_sys)
  end

  #puts Shell.run(cpu_sys)

end
