require "schema2plantuml/version"
require "Schema2plantuml/active_record/schema"

class Schema2plantuml
  def initialize(schema_file_path = 'schema.rb')
    @schema_file_path = schema_file_path
  end

  def run
    load @schema_file_path
  end
end
