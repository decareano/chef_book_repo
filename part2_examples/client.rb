verify_api_cert true

require "/Desktop/part2_examples/awesome_start_handler.rb"
require "/Desktop/part2_examples/awesome_report_handler.rb"
example_start_handler = Chef::Handler::AwesomeStartHandler.new
example_report_handler = Chef::Handler::AwesomeReportHandler.new
start_handlers << example_start_handler
report_handlers << example_report_handler
