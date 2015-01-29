class Project < ActiveRecord::Base

  validates :nome, presence: true
  validates  :horas_swf, presence: true
  validates  :horas_sf, presence: true
  validates  :faturado_sf, presence: true
  validates  :faturado_swf, presence: true

end
