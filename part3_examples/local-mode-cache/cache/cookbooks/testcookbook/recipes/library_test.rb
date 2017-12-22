#::Chef::Recipe.send(:include, UsefulMethods)

if StopFile.stop_file_exists?
	Chef::Log.fatal("Stop file exists")
	exit 1
else
	Chef::Log.warn("No stop file. carrying as normal")
end
