class Visualizacao < ActiveRecord::Base
  belongs_to :link
  attr_accessible :cidade, :pais, :regiao, :link

  def preenche ip
  	require 'json'
  	response = HTTParty.get("http://freegeoip.net/json/#{ip}")
  	dados = JSON.parse response.body
  	self.pais = dados["country_name"]
  	self.regiao = dados["region_name"]
  	self.cidade = dados["city"]
  end
end
