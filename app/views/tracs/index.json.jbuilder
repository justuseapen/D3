json.array!(@tracs) do |trac|
  json.extract! trac, :sesh_id
  json.url trac_url(trac, format: :json)
end
