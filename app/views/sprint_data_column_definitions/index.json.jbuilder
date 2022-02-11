# frozen_string_literal: true

json.array! @sprint_data_column_definitions, partial: 'sprint_data_column_definitions/sprint_data_column_definition',
                                             as: :sprint_data_column_definitions
