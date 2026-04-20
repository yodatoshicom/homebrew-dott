class Dott < Formula
  desc "Private domain search. No middlemen."
  homepage "https://github.com/yodatoshicom/dott"
  version "0.6.3"

  on_macos do
    on_arm do
      url "https://github.com/yodatoshicom/dott/releases/download/v0.6.3/dott-aarch64-apple-darwin.tar.gz"
      sha256 "f6a0dcf98ec271d64f5646e629112bace29a9aec096abbbce8f25dd4ddd5d953"
    end
    on_intel do
      url "https://github.com/yodatoshicom/dott/releases/download/v0.6.3/dott-x86_64-apple-darwin.tar.gz"
      sha256 "508e778769b0e4874210d48b7e14c5773538aadfeab93c517f8d837f7761304b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yodatoshicom/dott/releases/download/v0.6.3/dott-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "03d78deed97f137cdc04156ab83b72541ebfc2a27d2ce77a8ecbd7ee4198f99f"
    end
    on_intel do
      url "https://github.com/yodatoshicom/dott/releases/download/v0.6.3/dott-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5fec84930ddb10b45588674ca14aaaef7e6e4fcce8a6711b85547d64c12aa701"
    end
  end

  def install
    bin.install "dott"
  end

  test do
    assert_match "dott", shell_output("#{bin}/dott --help")
  end
end
