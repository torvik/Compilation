class Product < ActiveRecord::Base
  #belongs_to :source
  has_and_belongs_to_many :sources

  validates :nome, presence: true
  validates :status, presence: true
  validates :technology, presence: true


end
