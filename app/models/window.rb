class Window < ApplicationRecord
  belongs_to :site
  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "100x100>"}, default_url: "/images/:style/missing.png",
    :path => ":rails_root/public/windows/images/:id/:filename",
    :url => "/images/:id/:filename"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
