# This file was generated by GoReleaser. DO NOT EDIT.
class Cjwt < Formula
  desc "tool for inspecting jwts"
  homepage "https://github.com/aricart/cjwt"
  version "1.0.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/aricart/cjwt/releases/download/v1.0.0/cjwt-darwin-amd64.zip"
    sha256 "ed78fd63736f757bd7b30d2f5be8429d26e4f5ce40d83dbc5391a931c7e309d5"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/aricart/cjwt/releases/download/v1.0.0/cjwt-linux-amd64.zip"
      sha256 "8fe6f4a3cd408a123d0ade173e85de74c2cd04b23ef0f416114426facc607eca"
    end
  end

  def install
    bin.install "cjwt"
  end

  test do
    system "#{bin}/cjwt --help"
  end
end
