class SacdExtract < Formula
  desc "Improved sacd_extract"
  homepage "https://github.com/setmind/sacd-ripper"
  head "https://github.com/setmind/sacd-ripper.git", :revision => "58db5f16fcf410ae4d6aeca226a067b37ade136a"

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