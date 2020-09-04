# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "./lib/custom_download_strategy.rb"
class Csdip < Formula
  desc "CSDIP keygen"
  homepage ""
  version "1.19.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mklimuk/csdip/releases/download/v1.19.2/csdip_darwin_amd64.tar.gz", :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "901be112d90cf748d03bbae20c9fa477ab9ca3293634a817479310e6e20f3783"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mklimuk/csdip/releases/download/v1.19.2/csdip_linux_amd64.tar.gz", :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "0f995291ccda248560a7eaa3233f946d9de7d06be938cfcd68ca4cef5b1993fe"
    end
  end

  def install
    bin.install "csdip"
  end
end
