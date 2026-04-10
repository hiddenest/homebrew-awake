class Awake < Formula
  desc "Keep your Mac awake while AI coding CLIs are doing real work"
  homepage "https://github.com/hiddenest/awake"
  url "https://github.com/hiddenest/awake/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "c8f7725955765914be870b2287f6a74fc46d763f50991b98c9953e5bf3b51360"
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
