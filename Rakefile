require "bundler/gem_tasks"

task :default => :spec

desc "Ejecutar espectativas en la clase exam"
task :spec do
sh "rspec -I. spec/exam_spec.rb"
end

desc "Ejecutar con toda la Documentacion"
task :doc do
	sh "rspec -I. spec/exam_spec.rb --format documentation"
end

