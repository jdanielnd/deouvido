class Progression < ActiveRecord::Base

  has_attached_file :audio,
                    :storage => :s3,
                    :s3_credentials => "#{Rails.root}/config/s3.yml",
                    :path => "attachments/:id/:filename"
  validates_attachment_content_type :audio, :content_type => ['audio/mp3', 'application/x-mp3']

end
