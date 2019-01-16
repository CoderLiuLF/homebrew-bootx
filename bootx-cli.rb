require 'formula'

class BootxCli < Formula
  homepage 'https://www.dtstack.com/'
  url 'https://dtstack-static.oss-cn-hangzhou.aliyuncs.com/dt-bootx/dt-bootx-cli-1.0.0-SNAPSHOT.tar.gz'
  version '1.0.0-SNAPSHOT'
  sha256 '95b0b955bbe3cac16ffc47ed52448001eba3861fb96930cfbdf1bf2be8375229'

  bottle :unneeded
  depends_on :java

  def install
  	rm Dir["*.bat"]
    mv "bootx-cli.sh", "bootx-cli"
    chmod 0755, "bootx-cli"

    libexec.install Dir["*"]
    (bin/"bootx-cli").write_env_script(libexec/"bootx-cli", Language::Java.java_home_env)
  end
end
