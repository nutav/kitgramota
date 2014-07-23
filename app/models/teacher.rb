class Teacher < ActiveRecord::Base
  has_attached_file :avatar, styles: { medium: '600x600>' }, default_url: '/images/:style/missing.png'
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  # before_post_process { translit_paperclip_file_name self.avatar }

  def full_name
    [last_name, first_name, patronym].join(' ')
  end

  def short_name
    if patronym.blank?
      "#{last_name} #{first_name[0]}."
    else
      "#{last_name} #{[first_name[0] + '.', patronym[0] + '.'].join(' ')}"
    end
  end
end