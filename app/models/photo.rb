class Photo < ActiveRecord::Base
  has_attached_file :picture, styles: { medium: '300x300>', thumb: '100x100>' }, default_url: '/images/:style/missing.png'
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
  before_post_process { translit_paperclip_file_name self.picture }

  belongs_to :album
end