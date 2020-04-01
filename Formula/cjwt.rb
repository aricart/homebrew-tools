# This file was generated by GoReleaser. DO NOT EDIT.
class Cjwt < Formula
  desc "tool for inspecting jwts"
  homepage "https://github.com/aricart/cjwt"
  version "1.0.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/aricart/cjwt/releases/download/v1.0.2/cjwt-darwin-amd64.zip"
    sha256 "33269e7663f1c87d1c3e70c1f88286b98af75096fd1f60e3ffa8a548ec9fd0ad"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/aricart/cjwt/releases/download/v1.0.2/cjwt-linux-amd64.zip"
      sha256 "b9673178652da1b68d72e21da75896ebfa071b010b0a040f0b6f4dd697612b01"
    end
  end

  def install
    bin.install "cjwt"
  end

  test do
    system "#{bin}/cjwt --help"
  end
end
