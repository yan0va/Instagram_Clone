class Post < ActiveRecord::Base
  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, 
    storage: :s3,
    bucket: "instacoffee",
    s3_credentials: {
      access_key_id:     Rails.application.secrets.s3_access_key,
      secret_access_key: Rails.application.secrets.s3_secret_key
    }

  validates :description, presence: true
  validates_attachment_content_type :picture, content_type: ['image/jpg', 'image/jpeg', 'image/png']
end
