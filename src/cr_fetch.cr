require "xml"

module CrFetch
  VERSION = "0.1.0"

  puts "Print System Info"

  proc_file = File.readable?("/proc/") # See if OS contains the procfile to read from there, if so it's Linux, other then BSD or Mac.
  if (!proc_file)                      # If false
    sys_data = system "system_profiler -xml SPHardwareDataType"
    xml = XML.parse(sys_data.to_s)
    first = xml.first_element_child

    if first
      first.children.select(&.element?).each do |child| # Select only element children
        puts typeof(child)                              # XML::Node
        puts child.name                                 # firstname : String
        puts child.content                              # Jane : String?
      end
    end
  end
end
