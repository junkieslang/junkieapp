json.array!(@object_releases) do |object_release|
  json.extract! object_release, :id
  json.url object_release_url(object_release, format: :json)
end
