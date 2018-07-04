describe Fastlane::Actions::PodspecDependencyVersioningAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The podspec_dependency_versioning plugin is working!")

      Fastlane::Actions::PodspecDependencyVersioningAction.run(nil)
    end
  end
end
