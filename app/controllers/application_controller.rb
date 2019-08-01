# Include helper files in the concern directory

class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler
end
