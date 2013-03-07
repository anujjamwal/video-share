class Session < ActiveRecord::Base
  attr_accessible :video

  has_attached_file :video, :styles => {
        :m720p => {:geometry => "1280x720", :format => 'mp4', :streaming => true}
    },
    :processors => [:ffmpeg],
    :url => "/video/:filename"

  validates_attachment_presence :video
end
