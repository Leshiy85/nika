module Refinery
  module Events
    module Admin
      class EventsController < ::Refinery::AdminController

        crudify :'refinery/events/event',
                :xhr_paging => true,
		:order => "date DESC",
		:sortable => false
	#code
	
	protected

	  def find_all_events
	    # Order by event date
   	    @events = Event.order("date DESC")
	  end

	#code

      end
    end
  end
end
