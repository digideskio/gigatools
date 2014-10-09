class GigatoolsEvent
  require 'gigatools/gigatools_utils'
  require 'time'

  include GigatoolsUtils

  attr_reader :id, :artists, :city, 
    :country, :eventdate, :image_url, 
    :info, :name, :showtime, :state, 
    :url, :url_tix, :venue

  def initialize(event_json)
    self.set_attributes(event_json)
    @eventdate = Date.parse(event_json["eventdate"]) if event_json["eventdate"]
    @showtime = Time.parse(event_json["showtime"]) if event_json["showtime"]
  end

  # Returns an array of GigatoolsEvent objects created from a JSON list
  def self.create_list(events_json)
    events = []
    events_json.each do |event|
      events << GigatoolsEvent.new(event["event"])
    end

    return events
  end

  # Returns the city and state/country for an event if available
  def venue_location
    major_geo = self.state || self.country
    [self.city, major_geo].compact.join(", ")
  end

  # Returns a stringified version of the event date. Takes an optional
  # strftime string as an argument for formatting.
  def event_date(format = "%^a %d %^b")
    date = self.eventdate || self.showtime
    date.strftime(format) if date
  end

  # Returns a stringified version of the event time if the event 
  # has a showtime. Takes an optional strftime string as an argument 
  # for formatting.
  def event_time(format = "%l:%M %p")
    self.showtime.strftime(format) if self.showtime
  end

  # Returns gigatools user url string
  def event_url
    "http://gigs.gigatools.com/gig/#{self.id}"
  end
end
