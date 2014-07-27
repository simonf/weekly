json.array!(@weekly_updates) do |weekly_update|
  json.extract! weekly_update, :id, :project_id, :person_id, :weekstart, :rag, :percent, :comment
  json.url weekly_update_url(weekly_update, format: :json)
end
