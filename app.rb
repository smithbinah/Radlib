require "sinatra"

get "/" do
  erb("")
end

get "/upload" do
  erb("")
end

get "/:story" do
  @title = params[:story]
  erb(:story)
end

post "/submit/:story" do
  @title = params[:story]
  # params[:story]
  erb(:story)
end
