class MeetupEventsController < ApplicationController

  def show
    interest_group = InterestGroup.find_by(tag: params[:tag])
    meetup_events = MaEvent.new(interest_group).data
    render json: meetup_events.to_json
  end

end
