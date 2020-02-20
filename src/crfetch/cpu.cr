class Fetch::CPU
  # Initialize Variables used
  @@cpu_sys : String = ""
  @@cpu_core_phy : String = ""
  @@cpu_core_log : String = ""
  @@cpu_file : String = ""

  # The Logic for different OS
  case OS_G # Constant for what the OS is
  when "Linux" || "Windows"
    @@cpu_file = "/proc/cpuinfo" # Where the info for the cpu is

    @@cpu_sys = "less #{@@cpu_file}" # Todo: Fix this
    @@cpu_core_phy = "awk '/^core id/&&!a[$0]++{++i} END {print i}' #{@@cpu_file}"
    @@cpu_core_log = "grep -c '^processor' #{@@cpu_file}"
  when "MacOS"
    @@cpu_sys = "sysctl -n machdep.cpu.brand_string"
    @@cpu_core_phy = "sysctl -n hw.physicalcpu_max"
    @@cpu_core_log = "sysctl -n hw.logicalcpu_max"
  else
    raise "OS Not Found" # Replace with cleaner exception handling
  end

  # Defining Methods
  def cpu_info # Fetch::CPU.new.cpu
    @@cpu_sys
  end

  def cpu_core_log
    @@cpu_core_log
  end

  def cpu_core_phy
    @@cpu_core_phy
  end
end
