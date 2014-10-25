class Party < ActiveRecord::Base
  attr_accessible :happened_on, :approved, :description, :name, :image1, :image2, :image3
  has_attached_file :image1, :styles => { :thumb => "200x200>" }
  validates_attachment_content_type :image1, :content_type => /\Aimage/
  has_attached_file :image2
  validates_attachment_content_type :image2, :content_type => /\Aimage/
  has_attached_file :image3
  validates_attachment_content_type :image3, :content_type => /\Aimage/
  validates_presence_of :name
  validates :happened_on, date: { before_or_equal_to: Proc.new { Date.today } }

  scope :recent, where(approved: true).order("happened_on DESC").limit(3)

  def images
  	[]
  end
end
