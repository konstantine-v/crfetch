require "./os"

class Fetch::CPU
  def self.new(@@os : String) # Fetch::GetCPU.new(@@os)
    os = OS.new
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
    # when "BSD"
    # ...
    else
      puts "error"
    end

    return cpu_sys
  end

end
