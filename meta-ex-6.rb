module ActiveRecord
  class Base
    def self.set_table_name(new_name)
      @table_name = new_name.to_s
    end

    # def self.inherited(subcls)
    #   name = subcls.name.to_s.downcase + 's'
    #   subcls.set_table_name(name)
    # end
  end
end

class Book < ActiveRecord::Base
  set_table_name :volumes
end

p Book.instance_variables
p Book.instance_variable_get(:@table_name)
