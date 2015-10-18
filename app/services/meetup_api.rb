class MeetupApi

  include HTTParty
  base_uri 'api.meetup.com'

  API_KEY = ENV["MEETUP_API_KEY"]

  attr_accessor :interest_group

  def initialize(interest_group = InterestGroup.new)
    @interest_group = interest_group
  end

  def current_path
    ""
  end

  def response
    self.class.get(current_path, options).parsed_response
  end

  def data
    response['results']
  end

end
