class Dott < Formula
  desc "Private domain search. No middlemen."
  homepage "https://github.com/yodatoshicom/dott"
  version "0.6.1"

  on_macos do
    on_arm do
      url "https://github.com/yodatoshicom/dott/releases/download/v0.6.1/dott-aarch64-apple-darwin.tar.gz"
      sha256 "52de71bc2587932a5d52044a49b9ec0b853230fcacb1974bb47a2d408efc1b87"
    end
    on_intel do
      url "https://github.com/yodatoshicom/dott/releases/download/v0.6.1/dott-x86_64-apple-darwin.tar.gz"
      sha256 "22df4327cd95dc504a3274f922f0fa8bfa5b3307297562796c1726445cdce843"
    end
  end

  on_linux do
    url "https://github.com/yodatoshicom/dott/releases/download/v0.6.1/dott-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d7939ee86e7c6e0121aa5bd599beee941a706f6a723e5a92d31d54e9c6171d08"
  end

  def install
    bin.install "dott"
  end

  test do
    assert_match "dott", shell_output("#{bin}/dott --help")
  end
end
