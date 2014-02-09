class HomeController < ApplicationController
		def play_text
				respond_to do |format|
						format.xml
				end
		end
		
		def record_conversation
				if params[:cid_e164]
						@filename = "#{Time.now.to_s.delete(" ")}#{params[:cid_e164]}"
						@file_format = "wav"
						@duration = 30
				elsif params[:data] && params[:cid][4..-1]
						applicant = User.find_applicant(params[:cid][4..-1])
						Notifications.leave(applicant ? applicant.login : "Unknown User", params[:data]).deliver
				end
				respond_to do |format|
						format.xml
				end
		end
end
