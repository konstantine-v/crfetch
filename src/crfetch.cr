require "xml"
require "shell"

module CrFetch
  VERSION = "0.1.1"

  class GetOS
    def self.new
      os = Shell.run("uname -s").to_s # Todo: remove \n via grep awk or something
      case os
      when "Darwin\n"
        os = "MacOS"
      else
        os = "error"
      end
      return os
    end
  end

  class GetCPU
    os = GetOS.new
    # def self.cpu
    # def self.cpu_core_log
    # def self.cpu_core_phy
    # end
    case os
    when "Linux" || "Windows"
      puts "tbd"
    when "MacOS"
      cpu_sys = "sysctl -n machdep.cpu.brand_string"
      cpu_core_log = "sysctl -n hw.logicalcpu_max"
      cpu_core_log = "sysctl -n hw.physicalcpu_max"
      # add BSD

      # Print System Info
      print "CPU: "
      puts Shell.run(cpu_sys)
      print "CPU Logical Cores: "
      puts Shell.run(cpu_core_log)
      print "CPU Physical Cores: "
      puts Shell.run(cpu_core_log)

    end
  end

  puts GetOS.new

  # Todo:
  # Breakout the classes into their own files
  # Add Logic based on Admiral flags
  # Migrate the prints and puts to Crystal tablo cli tool
  # Use Admiral for cli arguments and flags to fully customize what is shown
end
