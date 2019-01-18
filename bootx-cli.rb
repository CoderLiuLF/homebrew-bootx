require 'formula'

class BootxCli < Formula
  homepage 'https://www.dtstack.com/'
  url 'https://github.com/CoderLiuLF/dt-bootx-cli/raw/master/dt-bootx-cli-1.0.0-SNAPSHOT.tar.gz'
  version '1.0.0-SNAPSHOT'
  sha256 '5b6ae8636a63de490f8ec6dbdabec7c2485d9382d7e4689da39ea85c2921e319'

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
