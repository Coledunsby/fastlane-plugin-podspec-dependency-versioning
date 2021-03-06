# podspec_dependency_versioning fastlane plugin

[![License](https://img.shields.io/github/license/Coledunsby/fastlane-plugin-podspec-dependency-versioning.svg)](https://github.com/Coledunsby/fastlane-plugin-podspec-dependency-versioning/blob/master/LICENSE)
[![Gem](https://img.shields.io/gem/v/fastlane-plugin-podspec_dependency_versioning.svg?style=flat)](http://rubygems.org/gems/fastlane-plugin-podspec_dependency_versioning)
[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-podspec_dependency_versioning)

## Getting Started

This project is a [_fastlane_](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-podspec_dependency_versioning`, add it to your project by running:

```bash
fastlane add_plugin podspec_dependency_versioning
```

## About podspec_dependency_versioning

Extends fastlane versioning options. Allows you to edit the versions of dependencies in podspecs.

## Actions

### change_podspec_dependency_version

```ruby
change_podspec_dependency_version(
    podspec: "Nitrous.podspec",    # The path of the podspec to modify
    dependency: "RxSwift",         # The dependency in the podspec to modify
    version: "~> 4.2.0"            # The version to set the dependency to
)
```

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://docs.fastlane.tools/plugins/plugins-troubleshooting/) guide.

## Using _fastlane_ Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://docs.fastlane.tools/plugins/create-plugin/).

## About _fastlane_

_fastlane_ is the easiest way to automate beta deployments and releases for your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
