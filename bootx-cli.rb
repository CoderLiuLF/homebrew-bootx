require 'formula'

class BootxCli < Formula
  homepage 'https://www.dtstack.com/'
  url 'https://github.com/CoderLiuLF/dt-bootx-cli/blob/master/dt-bootx-cli-1.0.0-SNAPSHOT.tar.gz'
  version '1.0.0-SNAPSHOT'
  sha256 'a36aa11fbd13bf3412794cec26623dc3666ce3612b1a5b007d1b9829fd335f9e'

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
