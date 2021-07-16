require "rake/testtask"

task :default => :test
#
# task :test do
#   Dir.glob('./test/*_test.rb').each { |file| require file }
# end

desc "Run unit tests"
Rake::TestTask.new(:test) do |t|
  t.libs << "lib"
  t.libs << "test"
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

