json.array!(@seshes) do |sesh|
  json.extract! sesh, :name, :ended_at
  json.url sesh_url(sesh, format: :json)
end
