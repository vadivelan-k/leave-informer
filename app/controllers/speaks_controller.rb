class SpeaksController < ApplicationController
		before_filter :require_user, :only => [:text_converter]
		def text_converter
		end
		
		def generate_audio
				#~ puts params.inspect
				#~ puts params[:content].inspect
				text_content = ActionView::Base.full_sanitizer.sanitize(params[:content])
				begin
						if text_content.length > 0
								text_content = text_content.gsub(/\r|\n/,"").strip()
								file_name = file_name(text_content[0..20] + ".mp3")
								session[:file_name] = file_name
								text_content.to_file "en", file_name
								flash[:status] = "success"
						end
				rescue
						flash[:status] = "failed"
				end
				redirect_to text_converter_path
		end
		
		def file_name(text)
				text.gsub(/[\x00\/\\:\*\?\"<>\|]/, '_')
		end
end


class String
  include Tts
end