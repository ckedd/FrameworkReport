class ApplicationController < ActionController::Base
  include Clearance::Controller
  Bugsnag.notify("Test error")
end
