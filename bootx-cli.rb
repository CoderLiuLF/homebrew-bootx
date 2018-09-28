require 'formula'

class BootxCli < Formula
  homepage 'https://www.dtstack.com/'
  url 'https://dtstack-static.oss-cn-hangzhou.aliyuncs.com/dt-bootx/dt-bootx-cli-1.0.0-SNAPSHOT.tar.gz'
  version '1.0.0-SNAPSHOT'
  sha256 '8772097b185d2084eac2d73ffc0f817ec6d0d091c514480b6d2cf90d6104559f'

  bottle :unneeded
  depends_on :java

  def install
  	rm Dir["*.bat"]
    mv "boot-cli.sh", "boot-cli"
    chmod 0755, "boot-cli"

    libexec.install Dir["*"]
    (bin/"boot-cli").write_env_script(libexec/"boot-cli", Language::Java.java_home_env)
  end
end
