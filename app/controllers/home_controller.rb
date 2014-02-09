class HomeController < ApplicationController
		def play_text
				respond_to do |format|
						format.xml
				end
		end
		
		def record_conversation
				#~ if params[:event] == "NewCall"
				@filename = "#{Time.now.to_s.delete(" ")}#{params[:cid_e164]}"
				@file_format = "wav"
				@duration = 30
				respond_to do |format|
						format.xml
				end
		end
end
