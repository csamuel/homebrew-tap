class SacdExtract < Formula
  desc "Improved sacd_extract"
  homepage "https://github.com/csamuel/sacd-ripper"
  url "https://github.com/csamuel/sacd-ripper/archive/refs/tags/v0.1.1-arm64.tar.gz"
  sha256 "4c91645ec9039327ca1f7688aa4cf9a6ea6622a54c8699f945349007b2fafb65"
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
