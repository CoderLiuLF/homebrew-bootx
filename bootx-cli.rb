require 'formula'

class BootxCli < Formula
  homepage 'https://www.dtstack.com/'
  url 'https://github.com/CoderLiuLF/dt-bootx-cli.git'
  version '1.0.0-SNAPSHOT'
  sha256 '472d586fa381325677f81cb74785293727e497bcdfa8c96a1cce9760536ed815'

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
