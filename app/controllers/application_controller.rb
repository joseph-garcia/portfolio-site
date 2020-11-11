class ApplicationController < ActionController::Base
  included DeviseWhitelist
end
