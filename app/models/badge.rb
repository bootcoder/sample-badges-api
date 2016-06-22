class Badge < ActiveRecord::Base
  validates :phrase, :presence => true
  belongs_to :teacher
end
