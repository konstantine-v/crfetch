class Fetch::OS # Call once then store as a constant variablea
  # This grabs the kernal (ie, Darwin => MacOS, Arch => Arch)
  def self.new
    os = Shell.run("uname -s").to_s # Todo: remove \n via grep awk or something

    case os
    when "Darwin\n" # Works
      os = "MacOS"
    when "Linux\n" || "GNU\n" # Todo: Test on GNU distro
      os = "Linux"
    when "CYGWIN\n" || "MSYS\n" || "MINGW\n" # Todo: Test on Windows Machine
      os = "Windows"
    when "BSD\n" || "DragonFly\n" || "Bitrig\n" # Todo: Test on BSD
      os = "BSD"
    else
      os = "error"
      raise "Unknown Operating System: #{os}..." # Todo: Change to proper exception
      raise "If this persists then open an issue on GitHub or GitLab."
    end

    return os # => "Linux"
  end
end
