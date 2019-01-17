require 'formula'

class BootxCli < Formula
  homepage 'https://www.dtstack.com/'
  url 'https://github.com/CoderLiuLF/dt-bootx-cli/blob/master/dt-bootx-cli-1.0.0-SNAPSHOT.tar.gz'
  version '1.0.0-SNAPSHOT'
  sha256 'd0653222916e3eb037325aaee4f2012136d34535c2d02d0676c977f91f9ff8ba'

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
