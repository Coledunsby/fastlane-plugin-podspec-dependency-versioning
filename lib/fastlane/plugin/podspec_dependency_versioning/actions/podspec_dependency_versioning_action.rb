require 'fastlane/action'
require_relative '../helper/podspec_dependency_versioning_helper'

module Fastlane
    module Actions
        class PodspecDependencyVersioningAction < Action
            def self.run(params)
                podspec_path = params[:podspec]
                dependency = params[:dependency]
                version = params[:version]

                podspec_contents = File.read(podspec_path)
                podspec_new_contents = podspec_contents.gsub(/(?<=s\.dependency '#{dependency}', ')(.*)(?=')/, version_number)

                unless podspec_contents == podspec_new_contents
                    File.open(podspec_path, "w") { |file| file.puts podspec_new_contents }
                    UI.success("successfully modified #{dependency} to version #{version} in #{podspec}")
                else
                    UI.error("could not find #{dependency} in #{podspec}")
                end
            end

            def self.description
                "This action will modify the version of a dependency in your podspec."
            end

            def self.authors
                ["Cole Dunsby"]
            end

            def self.return_value

            end

            def self.details
                "This action will modify the version of a dependency in your podspec."
            end

            def self.available_options
                [
                    FastlaneCore::ConfigItem.new(
                        key: :podspec,
                        env_name: "PODSPEC_PATH",
                        description: "The path of the podspec you wish to modify",
                        optional: false,
                        type: String
                    ),
                    FastlaneCore::ConfigItem.new(
                        key: :dependency,
                        env_name: "DEPENDENCY_NAME",
                        description: "The dependency you wish to modify",
                        optional: false,
                        type: String
                    ),
                    FastlaneCore::ConfigItem.new(
                        key: :version,
                        env_name: "DEPENDENCY_VERSION",
                        description: "The new version to assign to the dependency",
                        optional: false,
                        type: String
                    )
                ]
            end

            def self.is_supported?(platform)
                true
            end
        end
    end
end
