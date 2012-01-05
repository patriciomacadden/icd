class IcdSecondLevelCode < ActiveRecord::Base
  belongs_to :icd_first_level_code
  
  validates :code, presence: true, uniqueness: { scope: :icd_first_level_code_id }
  validates :title, presence: true
  
  def to_s
    "#{code} - #{title}"
  end
end
