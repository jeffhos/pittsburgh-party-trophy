class Party < ActiveRecord::Base
  attr_accessible :happened_on, :approved, :description, :name

  scope :recent, where(approved: true).order("happened_on DESC").limit(3)

  def images
  	[]
  end
end
