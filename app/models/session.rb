class Session < ActiveRecord::Base
  has_attached_file :video, :styles => {
      :m480p => {:geometry => "720x480", :format => 'mp4', :streaming => true},
      :thumb => { :geometry => "100x100#", :format => 'jpg', :time => 10 }
  }, :processors => [:ffmpeg]

  validates_attachment_presence :video
end
