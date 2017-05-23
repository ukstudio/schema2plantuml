module ActiveRecord
  class Schema
    def self.define(_info, &block)
      new.define(&block)
    end

    def define(&block)
      instance_eval(&block)
    end

    def create_table(table_name, _options, &block)
      puts <<~TABLE
      object #{table_name} {
        #{block.call(Table2plantuml.new)}
      }
      TABLE
    end

    def add_foreign_key(child_table_name, parent_table_name, _options = {})
      puts "#{parent_table_name} --o #{child_table_name}"
    end

    def enable_extension(*); end
    def add_index(*); end
    def create_view(*); end
  end

  class Table2plantuml
    def method_missing(column_type, column_name, _options = {})
      "#{column_name} : #{column_type}"
    end
  end
end
