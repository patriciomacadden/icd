class IcdChapter < ActiveRecord::Base
  has_many :icd_blocks
  
  validates :code, presence: true, uniqueness: true
  validates :title, presence: true
  
  def to_s
    "#{code} - #{title}"
  end
end
