class Kong < Formula
  desc "Kong is a Jira CLI for low-latency interactions with Jira's API"
  homepage "https://github.com/konradreiche/kong"

  url "https://github.com/konradreiche/kong/archive/refs/tags/v0.1-alpha.tar.gz"
  sha256 "d493fceec418d1565abe1ea8cd372baa325af054c063cf45b550c7c807221895"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "#{bin}/kong", "cmd/kong.go"
  end

  test do
    system "#{bin}/kong"
  end
end
