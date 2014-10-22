json.array!(@parameters) do |parameters|
  json.extract! parameters, :name, :snippet_text, :location, :address, :rating_img_url_large
end
