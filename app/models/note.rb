class Note < ApplicationRecord

    mount_uploader :image, ImageUploader
  def self.search(search)
      where("title ILIKE ? OR body ILIKE ?", "%#{search}%", "%#{search}%")
  end
end
