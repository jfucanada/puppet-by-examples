#
#  loremipsum.rb
#
#  $tmp = loremipsum()
#  notify{ $tmp: }
#
#

module Puppet::Parser::Functions
  newfunction(:loremipsum, :type => :rvalue, :doc => <<-EOS
    Lorem ipsum.
    Should be called without parameters.
    EOS
  ) do |arguments|

    raise(Puppet::ParseError, "loremipsum(): should be called " +
      "without parameters.") if arguments.size > 0

    return 'lorem ipsum'
  end
end
