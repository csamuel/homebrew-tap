class SacdExtract < Formula
  desc "Improved sacd_extract"
  homepage "https://github.com/csamuel/sacd-ripper"
  url "https://github.com/csamuel/sacd-ripper/archive/refs/tags/v0.1-arm64.tar.gz"
  sha256 "bb887d41a465015667b48faf31b078da64cfb4538a9d745fdac886861c2a98c4"
  license "GPL-2.0-only"

  head "https://github.com/csamuel/sacd-ripper.git", branch: "master"

  depends_on "cmake" => :build

  def install
    cd "tools/sacd_extract"
    system "cmake", "."
    system "make"
    bin.install "sacd_extract"
  end

  test do
    system bin/"sacd_extract", "--help"
  end
end
