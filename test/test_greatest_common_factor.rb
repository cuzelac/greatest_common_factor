$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'greatest_common_factor'
require 'pry'

t = GreatestCommonFactor.new
binding.pry
