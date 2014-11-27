XCODE_PATH = "/Applications/Xcode.app"
CLASS_DUMP_PATH = "/usr/local/bin/class-dump"

task :default => :build

desc "Build everything"
task :build do
  sh "/usr/bin/xcodebuild"
end

desc "Clean up build objects"
task :clean do
  sh "/usr/bin/xcodebuild clean"
end

namespace :gen do
  desc "Generate header files for private framework in iOS simulator"
  task :header do
    Dir.chdir("sniffer") do
      sh "#{CLASS_DUMP_PATH} #{File.join(XCODE_PATH, "Contents/SharedFrameworks/DVTiPhoneSimulatorRemoteClient.framework")} > DVTiPhoneSimulatorRemoteClient.h"
      sh "#{CLASS_DUMP_PATH} #{File.join(XCODE_PATH, "Contents/Developer/Library/PrivateFrameworks/CoreSimulator.framework")} > CoreSimulator.h"
    end
  end

end