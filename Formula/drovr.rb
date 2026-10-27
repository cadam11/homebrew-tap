class Drovr < Formula
  desc "Capacity-aware supervisor that decides when a project-loop cycle may start"
  homepage "https://drovr.app"
  url "https://github.com/cadam11/drovr/releases/download/v0.2.1/drovr_darwin_arm64.tar.gz"
  sha256 "e9d549fd7708b141519f336532f4b6e5542202c8457e8dcc6b50e0134a5aa11e"
  version "0.2.1"
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
