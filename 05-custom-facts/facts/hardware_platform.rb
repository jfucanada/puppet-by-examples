# hardware_platform.rb

    Facter.add('hardware_platform') do
      setcode do
        Facter::Core::Execution.exec('/bin/uname --hardware-platform')
      end
    end