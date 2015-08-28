Facter.add('home_vagrant_dir_exists') do
  setcode do
    output = Facter::Core::Execution.exec('ls /home | grep vagrant')
    if output.strip == 'vagrant'
        true
    else
        false
    end
  end
end