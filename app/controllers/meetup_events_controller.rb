class MeetupEventsController < ApplicationController

  def show
    @interest_group = InterestGroup.find_by(tag: params[:tag])
    @meetup_events = MaEvent.new(@interest_group).data
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @meetup_events.to_json }
    end
  end

end
