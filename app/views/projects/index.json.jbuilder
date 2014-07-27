json.array!(@projects) do |project|
  json.extract! project, :id, :code, :name, :start, :end, :stage, :active
  json.url project_url(project, format: :json)
end
