# class ProjectController < ApplicationController
# 	# respond_to :json
# 	def linkDatabase
# 		begin
# 			rs = {}
# 			p 'linkDatabaselinkDatabaselinkDatabase'
# 			p params[:filename]	
# 			p = Product.new
# 			p.name = "Some Book"
# 			# response.headers["Content-Disposition"] = 'attachment; filename="downloadrb.zip"'
# 			# response.headers["Content-Type"] = "application/zip"
# 		rescue Exception => e
# 			rs[:msg] = e.message
# 			rs[:success] = false
# 		end
# 		rs[:result] = p.name
# 		# //////////////////////////////////
# 		# rs[:request] = request.headers["Cookie"]
# 		# rs[:response] = response.headers
# 		rs[:success] = true
# 		render :json=>rs
# 	end
# end


# /////////////////////////////////////

class ProjectController < ApplicationController
	# respond_to :json
	def linkDatabase
		# begin
			rs = {}
			p 'linkDatabaselinkDatabaselinkDatabase'
			p params[:user]
			p = Product.new
			p.name = "Some Book"
			# response.headers["Content-Disposition"] = 'attachment; filename="robots.zip"'
			# response.headers["Content-Type"] = "application/octet-stream"
			# response.headers['Cache-Control'] =  "private"
			# response.headers['X-Accel-Redirect'] = "http://down.cncrk.com:8080/soft/keygen/Photoshopcs6.zip"
			send_file "#{Rails.root}/public/download/download.zip", filename: 'robots.zip', disposition: 'attachment', :type=>"application/octet-stream;charset=utf-8"
			# rs[:result] = p.name
			# send_data rs, filename: 'robots.zip', disposition: 'attachment', :type=>"application/octet-stream;charset=utf-8"
		# rescue Exception => e
		# 	rs[:msg] = e.message
		# 	rs[:success] = false
		# end
		# rs[:result] = p.name
		# //////////////////////////////////
		# rs[:request] = request.headers["Cookie"]
		# rs[:response] = response.headers
		# rs[:success] = true
		# render :json=>rs
		# render :nothing => true
	end
end
