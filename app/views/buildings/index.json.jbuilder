json.array!(@buildings) do |building|
  json.extract! building, :id, :index, :show, :new, :edit
  json.url building_url(building, format: :json)
end
