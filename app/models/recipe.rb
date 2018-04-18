require 'open-uri'
require 'net/http'
require 'json'

class Recipe < ApplicationRecord

  def self.search(user_input)
    url = "http://food2fork.com/api/search?key=74404c80143b36f7d9d1e5591aeab612&q=#{user_input}&page=1"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end

  def self.search_details(recipe_id)
    url = "http://food2fork.com/api/get?key=74404c80143b36f7d9d1e5591aeab612&rId=#{recipe_id}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end

end
