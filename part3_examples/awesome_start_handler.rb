require "chef/handler"


class Chef
	class Handler
		class AwesomeStartHandler < Chef::Handler
		


		def report
			Chef::Log.warn("Handler #{self.class} executed")
			run_start_time = @run_status.start_time
			node_name = @run_status.node.name


			File.open("/Desktop/part2_examples/handler_output", "a") do |file|
				file.write("\n#{self.class}: Run started on #{node_name} at " + 
			"#{run_start_time}\n")
end
end
end
end
end	
