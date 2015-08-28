Facter.add('home_vagrant_dir_exists') do
  setcode do
    Facter::Core::Execution.exec('ls /home | grep vagrant')
  end
end