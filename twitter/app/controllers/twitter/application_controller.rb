module Twitter
  class ApplicationController < ::ApplicationController
  	layout 'application'
  	before_filter :authenticate_user! 
  end
end
