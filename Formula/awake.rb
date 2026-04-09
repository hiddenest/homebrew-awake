class Awake < Formula
  desc "Keep your Mac awake while AI coding CLIs are doing real work"
  homepage "https://github.com/hiddenest/awake"
  url "https://github.com/hiddenest/awake/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "6df03c5245aded051798b74a6d7329c3717454e6856324a164ef59b2e8cd28f0"
  license "MIT"
  head "https://github.com/hiddenest/awake.git", branch: "main"

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/awake setup --help")
  end
end
