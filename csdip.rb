# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "./lib/custom_download_strategy.rb"
class Csdip < Formula
  desc "CSDIP keygen"
  homepage ""
  version "1.23.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mklimuk/csdip/releases/download/v1.23.0/csdip_darwin_amd64.tar.gz", :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "449809d91df4fc91c75f4dbac39f458a721b7b314032f7c0d17d55a084f391e0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mklimuk/csdip/releases/download/v1.23.0/csdip_linux_amd64.tar.gz", :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "9236dc84d1ad669ca590940acd6ebb99bf506863838e2b73a9cd8f98b8273dfd"
  end

  def install
    bin.install "csdip"
  end
end
