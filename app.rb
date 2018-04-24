require "sinatra"

@stories = Dir.entries("uploads")

get "/" do
  erb("")
end

get "/upload" do
  erb("")
end

get "/#{:story}" do
  @title = params[:story]
  erb(:story)
end

post "/submit/:story" do
  @title = params[:story]
  # params[:story]
  erb(:story)
end
# finish up when upload.erb is finished
post "/upload" do
  upload << params[:storyFile]
  File.open("uploads/#{filename}", "w") do |file|
    file.puts upload
  end
end
