# frozen_string_literal: true

json.extract! sprint_data_column_definition, :id, :name, :position, :created_at, :updated_at
json.url sprint_data_column_definition_url(sprint_data_column_definition, format: :json)
