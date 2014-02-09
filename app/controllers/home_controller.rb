class HomeController < ApplicationController
		def play_text
				respond_to do |format|
						format.xml
				end
		end
end
