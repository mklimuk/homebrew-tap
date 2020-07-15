# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "./lib/custom_download_strategy.rb"
class Csdip < Formula
  desc "CSDIP keygen"
  homepage ""
  version "1.15.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mklimuk/csdip/releases/download/v1.15.4/csdip_darwin_amd64.tar.gz", :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "e39f63b96ecc736c6c9e286c88517c82500457c85c21b0d0384329bb9ebd0419"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mklimuk/csdip/releases/download/v1.15.4/csdip_linux_amd64.tar.gz", :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a3b6616be7edf174c5b4c75164ba88426fa9db59007648229e785388d18c59ab"
    end
  end

  def install
    bin.install "csdip"
  end
end
