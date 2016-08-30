class RequestController < ApplicationController
  def index
  	puts request.remote_ip
  	@current_request = Request.new(:ip => request.remote_ip , :time => Time.new)
  	@past_requests = Request.last(10)
  	@past_requests.reverse
  	@current_request.save
  end

  # private
  # 	def request_params
  # 		params.require(:request).permit(:ip, :time)
  # 	end

end
