class Note < ApplicationRecord


  def self.search(search)
      where("title ILIKE ? OR body ILIKE ?", "%#{search}%", "%#{search}%") 
  end
end
