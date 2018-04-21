require "sinatra"

get "/" do
  erb("")
end

get "/upload" do
end

get "/:story" do
  @title = params[:story]
  erb(:story)
end
