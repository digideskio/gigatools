require "gigatools/version"
require 'gigatools/gigatools_user'
require 'gigatools/gigatools_event'

module Gigatools
  require 'net/http'
  require 'json'

  # This method takes in a username string and returns either a 
  # GigatoolsUser object or nil if the user is not found.
  def self.find_by_username(username)
    uri = URI('http://gigs.gigatools.com/user/'+username+'.json')
    response = Net::HTTP.get_response(uri)

    if response.is_a?(Net::HTTPSuccess)
      json_response = JSON.parse(response.body)

      user_json = json_response[0]["user"]
      events_json = json_response[1]

      return GigatoolsUser.new(user_json, events_json)
    end
  end
end
