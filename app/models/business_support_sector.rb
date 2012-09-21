class BusinessSupportSector
  include Mongoid::Document
  
  has_and_belongs_to_many :business_support_schemes, index: true
  
  field :name, type: String
  
  validates_presence_of :name
  validates_uniqueness_of :name
  
end