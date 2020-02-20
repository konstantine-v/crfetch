class Fetch::GPU
  # Initialize Variables used
  @@gpu_driver : String = ""

  # The Logic for different OS
  case OS_G # Constant for what the OS is
  when "Linux"
    @@gpu_driver = "ls" # TODO: Fix this
  when "MacOS"
    # driver_info = Shell.run("kextstat | grep 'GeForceWeb'")
    @@gpu_driver = "kextstat | if grep 'GeForce'; then echo 'GeForce Driver'; else echo 'MacOS Default Driver'; fi"
  else
    raise "OS Not Found" # Replace with cleaner exception handling
  end

  # Defining Methods
  def gpu_driver # Fetch::GPU.new.gpu_driver
    @@gpu_driver
  end
end
