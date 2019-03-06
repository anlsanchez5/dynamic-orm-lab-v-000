require 'pry'
require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord
  col_names = self.column_names.delete_if {|col| (col.is_a? Integer) == true}
  binding.pry
  col_names.each do |col_name|
    attr_accessor col_name.to_sym
  end

end
