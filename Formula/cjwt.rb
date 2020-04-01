# This file was generated by GoReleaser. DO NOT EDIT.
class Cjwt < Formula
  desc "tool for inspecting jwts"
  homepage "https://github.com/aricart/cjwt"
  version "1.0.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/aricart/cjwt/releases/download/v1.0.5/cjwt-darwin-amd64.zip"
    sha256 "d97d2ce80cc98427ccf3d275f57f6fb65c5d884a8b367e039e12e72466e156d9"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/aricart/cjwt/releases/download/v1.0.5/cjwt-linux-amd64.zip"
      sha256 "3cf2b7cdc296ff568941d6ec93f52aa56d65d7a8625b8736d81259283da88424"
    end
  end

  def install
    bin.install "cjwt"
  end

  test do
    system "#{bin}/cjwt --help"
  end
end
