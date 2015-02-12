module Puppet::Parser::Functions

  newfunction(:loadjson, :type => :rvalue, :doc => <<-'ENDHEREDOC') do |args|
    Load a JSON file.

    For example:

        $myhash = loadjson('/some/path/metadata.json')
    ENDHEREDOC

    unless args.length == 1
      raise Puppet::ParseError, ("loadjson(): wrong number of arguments (#{args.length}; must be 1)")
    end

    require 'json'
    fileContents = File.read(args[0])
    parsed = JSON.parse(fileContents)

    return parsed

  end

end
