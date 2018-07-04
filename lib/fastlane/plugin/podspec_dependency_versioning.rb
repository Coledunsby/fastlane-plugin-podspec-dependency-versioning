require 'fastlane/plugin/podspec_dependency_versioning/version'

module Fastlane
    module PodspecDependencyVersioning
        def self.all_classes
            Dir[File.expand_path('**/{actions,helper}/*.rb', File.dirname(__FILE__))]
        end
    end
end

Fastlane::PodspecDependencyVersioning.all_classes.each do |current|
    require current
end
