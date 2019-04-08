require_relative './environment'
require 'pry'

puts "Welcome to the Youtube Searcher"

while true
  puts "Enter a keyword to search for videos:"
  search = gets.chomp

  videos = get_videos_from_youtube(search)

 # Between each step, run the code!
  # STEP 0, just print out the first title
  # # Title 1
  # # Title 1
  # # Title 1
  # videos.each do |video|
  #   puts videos.first.title
  #   # video
  # end

  # STEP 1, just print out the titles
  # # Title 1
  # # Title 2
  # # Title 3
  # videos.each do |video|
  #   puts video.title
  #   # video
  # end

  # STEP 2, hard code in a number
  # # 1. Title 1
  # # 1. Title 2
  # # 1. Title 3
  # videos.each do |video|
  #   puts "1. #{video.title}"
  #   # video
  # end


  # STEP 3, use whatever number we supply
  # num = 75
  # # 75. Title 1
  # # 75. Title 2
  # # 75. Title 3
  # videos.each do |video|
  #   puts "#{num}. #{video.title}"
  #   # video
  # end

  # STEP 4, do the incrementing
  num = 1
  # 1. Title 1
  # 2. Title 2
  # 3. Title 3
  videos.each do |video|
    puts "#{num}. #{video.title}"
    num += 1
  end

  puts "Enter the number of the video you would like to play:"
  index = gets.chomp.to_i - 1

  youtube_video = videos[index]
  youtube_video.open_in_browser
end

# binding.pry
# Write your code here
# notice there is nothing else here, not even a pry,
# add one if you'd like
