class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
 include SessionsHelper
end
#https://lit-shore-48124.herokuapp.com/ 