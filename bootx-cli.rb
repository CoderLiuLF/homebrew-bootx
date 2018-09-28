require 'formula'

class BootxCli < Formula
  homepage 'https://www.dtstack.com/'
  url 'https://dtstack-static.oss-cn-hangzhou.aliyuncs.com/dt-bootx/dt-bootx-cli-1.0.0-SNAPSHOT.tar.gz'
  version '1.0.0-SNAPSHOT'
  sha256 'c01b0bda90478e8f16165ad7d6e78acdc9f657a9'

  def install
    root = '.'

    bin.install Dir["#{root}/bin/bootx-cli"]
    lib.install Dir["#{root}/lib/bootx-cli.jar"]
  end
end
