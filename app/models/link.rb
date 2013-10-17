class Link < ActiveRecord::Base
  belongs_to :usuario
  attr_accessible :publicidade, :url, :usuario
  has_many :visualizacoes
end

