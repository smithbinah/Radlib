require "sinatra"

@stories = Dir.entries("uploads")

get "/" do
  erb("")
end

get "/upload" do
  erb(:upload)
end

get "/#{:story}" do
  @title = params[:story]
  erb(:story)
end

# post "/upload" do

# 	file_name = params['story_file'][:filename]
# 	file_contents = ""

# 	if File.exists?(file_name)

# 		File.open(file_name, 'r') do |file|
# 			file_contents = file.read
# 		end
# 	end

# 	if file_contents != ""

# 		File.open("uploads/" + file_name, "w") do |file|
# 			file.puts file_contents
# 		end
# 	end
# end

# finish up when upload.erb is finished
post "/upload" do
  upload << params[:storyFile]
  File.open("uploads/#{filename}", "w") do |file|
    file.puts upload
  end
end
