require "sinatra"

get "/" do
  erb("test")
end

get "/upload" do
end

get "/:story" do
end
