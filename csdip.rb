# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "./lib/custom_download_strategy.rb"
class Csdip < Formula
  desc "CSDIP keygen"
  homepage ""
  version "1.7.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mklimuk/csdip/releases/download/v1.7.3/csdip_darwin_amd64.tar.gz", :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "c043650cf2319dfdbea895796736f36ad822d94a29d55c36725bd877ac6ba467"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mklimuk/csdip/releases/download/v1.7.3/csdip_linux_amd64.tar.gz", :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a6408932acad6b11accc7a05520fb3d2c95c67f91e72061608d97731078085aa"
    end
  end

  def install
    bin.install "csdip"
  end
end
