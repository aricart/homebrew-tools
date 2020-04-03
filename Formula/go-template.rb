# This file was generated by GoReleaser. DO NOT EDIT.
class GoTemplate < Formula
  desc "go-template description"
  homepage "https://github.com/aricart/go-template"
  version "0.0.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/aricart/go-template/releases/download/v0.0.1/go-template-darwin-amd64.zip"
    sha256 "1d10471a0c2ca366301042d4bbe69d5ef5052d537a24e5f3f4cbba90a5cf22e6"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/aricart/go-template/releases/download/v0.0.1/go-template-linux-amd64.zip"
      sha256 "ede55cc3ef5d5e98eab811cd6a2b6198d4c5a9c7a121c958bb7f225a7180651f"
    end
  end

  def install
    bin.install "go-template"
  end

  test do
    system "#{bin}/go-template --help"
  end
end
