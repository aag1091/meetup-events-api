json.array!(@groups) do |group|
  json.extract! group, :id, :name, :group_id, :interest_group_id
  json.url group_url(group, format: :json)
end
