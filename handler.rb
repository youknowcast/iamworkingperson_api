# frozen_string_literal: true

require 'json'
require 'yaml'

def handler(event:, context:)
  {
    statusCode: 200,
    headers: { 'Content-Type': 'application/json' },
    body: JSON.generate(yaml_load)
  }
end

def yaml_load
  open('holiday.yml', 'r') { |f| YAML.load(f) }
end
