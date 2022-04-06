require "test_helper"

class EventTest < ActiveSupport::TestCase
  test "event should be save success" do
    event = Event.new
    event.name =  "New Event"
    event.start_date =  "2022-04-06"
    event.end_date = "2022-04-06"
  

    assert event.save

  end

  test "event should not be save" do
    event = Event.new
    event.name = ""
    event.start_date = "2022-04-07"
    event.end_date = "2022-04-05"

    assert_not  event.save
  end
end
