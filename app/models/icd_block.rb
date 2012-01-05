class IcdBlock < ActiveRecord::Base
  belongs_to :icd_chapter
  has_many :icd_first_level_codes
  
  validates :code, presence: true, uniqueness: { scope: :icd_chapter }
  validates :title, presence: true
  
  def to_s
    "#{first_code}:#{last_code} - #{title}"
  end
end
