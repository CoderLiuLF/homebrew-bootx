require 'formula'

class BootxCli < Formula
  homepage 'https://www.dtstack.com/'
  url 'https://dtstack-static.oss-cn-hangzhou.aliyuncs.com/dt-bootx/dt-bootx-cli-1.0.0-SNAPSHOT.tar.gz'
  version '1.0.0-SNAPSHOT'
  sha256 '8772097b185d2084eac2d73ffc0f817ec6d0d091c514480b6d2cf90d6104559f'

  def install
    root = '.'

    bin.install Dir["#{root}/bin/bootx-cli"]
    lib.install Dir["#{root}/lib/bootx-cli.jar"]
  end
end
