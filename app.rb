require "sinatra"

get "/" do
end

get "/upload" do
end

post "/upload" do
  File.open("uploads/" + params["storySubmit"], "w") do |file|
  end
end

get "/:story" do |story|
end
