class InfoController < ApplicationController
  def index
    table_names = ApplicationRecord.connection.tables
    @model_names = table_names.each_with_object([]) { |table_name, arr| arr << table_name.singularize }
  end
end
