class MeetupEventsController < ApplicationController

  def show
    @interest_group = InterestGroup.find_by(tag: params[:tag])
    @meetup_events = MaEvent.new(@interest_group).data
    @meetup_groups = MaGroup.new.data
    respond_to do |format|
      format.html { render :show }
      format.json { render json: {
          groups: @meetup_groups,
          events: @meetup_events 
        }.to_json
      }
    end
  end

end
