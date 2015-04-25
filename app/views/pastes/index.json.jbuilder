json.array!(@pastes) do |paste|
  json.extract! paste, :id, :title, :code, :slug
  json.url paste_url(paste, format: :json)
end
