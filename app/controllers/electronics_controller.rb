class ElectronicsController < ApplicationController
		#~ before_filter :require_user
		def index
				@uploads = Upload.all
		end
		
		def new
				@upload = Upload.new
		end
		
		def create
				@upload = Upload.create(params[:upload])
				if @upload.save
						redirect_to electronics_path
				else
						render :new
				end
		end
end
