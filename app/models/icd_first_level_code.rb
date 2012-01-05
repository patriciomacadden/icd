class IcdFirstLevelCode < ActiveRecord::Base
  belongs_to :icd_block
  has_many :icd_second_level_codes
  
  validates :code, presence: true, uniqueness: { scope: :icd_block_id }
  validates :title, presence: true
  
  def to_s
    "#{code} - #{title}"
  end
end
