require 'bundler/setup'
require 'dotenv/load'
Bundler.require

require_all 'lib'

def get_videos_from_youtube(keyword)
  Youtube::Adapter.new(keyword).get_videos_from_youtube
end
