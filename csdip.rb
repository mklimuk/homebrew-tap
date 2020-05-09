# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "./lib/custom_download_strategy.rb"
class Csdip < Formula
  desc "CSDIP keygen"
  homepage ""
  version "1.2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mklimuk/csdip/releases/download/v1.2.0/csdip_darwin_amd64.tar.gz", :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "f801d805a3ec1c5a88e6a417d4a8046bd1b55114bef02dc74f097a2ac8fbbf99"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mklimuk/csdip/releases/download/v1.2.0/csdip_linux_amd64.tar.gz", :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "02c802c29d83f92e9d66c62893284b8ac06839f942318478993ade7c34d27ea3"
    end
  end

  def install
    bin.install "csdip"
  end
end
