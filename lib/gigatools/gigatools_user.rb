class GigatoolsUser
  require 'gigatools/gigatools_utils'
  include GigatoolsUtils

  attr_reader :id, :artistname, :url, 
    :username, :bookingcontact, :mixcloud_url, 
    :soundcloud_url, :twittername,  :widgetname

  # events returns an array of GigatoolsEvent objects
  #if the user has any upcoming events 
  attr_reader :events

  def initialize(user_json, events_json)
    self.set_attributes(user_json)
    @events = GigatoolsEvent.create_list(events_json)
  end

  # Returns gigatools user url
  def gigatools_url
    "http://gigs.gigatools.com/user/#{self.username}"
  end
end
