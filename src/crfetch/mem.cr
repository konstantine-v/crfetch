class Fetch::Memory
  # Initialize Variables used
  @@mem_total : String = ""

  # The Logic for different OS
  case OS_G # Constant for what the OS is
  when "Linux" || "Windows"
    @@mem_total = "ls" # TODO: Fix this
  when "MacOS"
    @@mem_total = "sysctl -n hw.memsize | while read i; do echo \"$i/1024/1024/1024\" | bc; done"
  else
    raise "OS Not Found" # Replace with cleaner exception handling
  end

  # Defining Methods
  def total # Fetch::Memory.new.total
    @@mem_total
  end
end
