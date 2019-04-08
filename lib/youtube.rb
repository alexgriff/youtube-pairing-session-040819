module Youtube
  class Adapter

    attr_accessor :results
    attr_reader :keyword

    def initialize(keyword)
      @keyword = keyword
    end

    def get_videos_from_youtube
      self.results = HTTParty.get(api_url)["items"]
      create_videos
    end

    private

    def create_videos
      results.map do |video_data|
        title = video_data["snippet"]["title"]
        link = video_url(video_data["id"]["videoId"])
        Video.new(title, link)
      end
    end

    def api_url
      "https://www.googleapis.com/youtube/v3/search?part=snippet&key=#{api_key}&q=#{self.keyword}&type=video"
    end

    def video_url(id)
      "https://www.youtube.com/watch?v=#{id}"
    end

    def api_key
      ENV["API_KEY"]
    end
  end
end
