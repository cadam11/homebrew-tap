class Drovr < Formula
  desc "Capacity-aware supervisor that decides when a project-loop cycle may start"
  homepage "https://drovr.app"
  url "https://github.com/cadam11/drovr/releases/download/v0.2.0/drovr_darwin_arm64.tar.gz"
  sha256 "79a664b189bfefa5ba21a749dc54b8554721c0d10277c8fbb2863b2ec00a7200"
  version "0.2.0"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "drovr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/drovr version")
  end
end
