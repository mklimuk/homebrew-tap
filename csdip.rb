# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "./lib/custom_download_strategy.rb"
class Csdip < Formula
  desc "CSDIP keygen"
  homepage ""
  version "1.25.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mklimuk/csdip/releases/download/v1.25.0/csdip_darwin_amd64.tar.gz", :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "57973a04075281786d95d4a9a075e87013d0c5059332afc5d8cac879e41febdc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mklimuk/csdip/releases/download/v1.25.0/csdip_linux_amd64.tar.gz", :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "5bf39ce24bc4532fb7e817c8f27d676d3e9de826185adf9676479606b9b24d40"
    end
  end

  def install
    bin.install "csdip"
  end
end
