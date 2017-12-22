require "chef/handler"


class Chef
	class Handler
		class AwesomeReportHandler < Chef::Handler
		


		def report
			if @run_status.success?
				run_elapsed_time = @run_status.elapsed_time
				node_name = @run_status.node.name
				resource_count = @run_status.all_resources.length
				updated_resources = @run_status.updated_resources
				updated_resource_count = updated_resources.length

				File.open("/tmp/handler_output", 'a') do |file|
 					file.write("\n#{self.class}: Run successfully completed on " +
 				"#{node_name} and took " +
 				"#{run_elapsed_time} seconds:\n")
 					file.write(" #{resource_count} resources in total, " +
 				"#{updated_resource_count} updated:\n")
 				# Write each resource in the updated_resources list to our
 				# output file
 				updated_resources.each do |resource|
 					m = "recipe[#{resource.cookbook_name}::" +
 					"#{resource.recipe_name}]" +
 					" ran '#{resource.action}' on #{resource.resource_name}" +
 					" '#{resource.name}'"
 					file.write(" #{m}\n")
end
end
end
end
end	
end
end
