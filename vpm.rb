class Vpm < Formula
  desc "Verilog Package Manager"
  homepage "https://github.com/getinstachip/vpm"
  version "0.2.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getinstachip/vpm/releases/download/v0.2.9/vpm-0.2.9-x86_64-apple-darwin.tar.gz"
      sha256 "63917df4c6a23bd4b19269a11cfcf9d625e0a6ac29598621357993cb81ce0282"
    else
      url "https://github.com/getinstachip/vpm/releases/download/v0.2.9/vpm-0.2.9-aarch64-apple-darwin.tar.gz"
      sha256 "786758a18131a7742362f1e74004fdbe738d892f8be02f8d8e6b3877ee220a82"
    end
  end

  def install
    bin.install "vpm"
  end

  test do
    assert_match "VPM version #{version}", shell_output("#{bin}/vpm --version")
  end
end
