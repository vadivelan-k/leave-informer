namespace :cleanup_directory do
  desc "Clean public directory, remove all .mp3 files except recent 2 files"
  task :delete_mp3 => :environment do
				#~ puts "rip"
				#~ puts File.expand_path('../../../public', __FILE__)
				FileUtils.rm_rf(Dir.glob(File.expand_path('../../../public', __FILE__) + '/*.mp3'))
  end
end