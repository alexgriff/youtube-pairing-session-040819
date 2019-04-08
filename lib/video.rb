class Video

  attr_reader :title, :link

  def initialize(title, link)
    @title = title
    @link = link
  end

  def open_in_browser
    Launchy.open(self.link)
    self
  end

end
