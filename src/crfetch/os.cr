class Fetch::OS # Call once then store as a constant variable
  def self.new
    os = Shell.run("uname -s").to_s # Todo: remove \n via grep awk or something
    # Create array with all Operating Systems to make it easier? How is that for memory?

    case os
    when "Darwin\n"
      os = "MacOS"
    when "Linux\n"
      os = "Linux"
    when "Windows\n"
      os = "Windows"
    when "BSD\n"
      os = "BSD"
    else
      os = "error"
    end

    return os # => "Linux"
  end
end
