# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dagger < Formula
  desc "Dagger is a programmable deployment system."
  homepage "https://github.com/dagger/dagger"
  version "0.1.0-alpha.5"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://dagger-io.s3.amazonaws.com/dagger/releases/0.1.0-alpha.5/dagger_v0.1.0-alpha.5_darwin_amd64.tar.gz"
    sha256 "9cf26ff5539d6067c53db5c168fe93bf0d54c0dfdb060caa67ef7a634d8179ce"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://dagger-io.s3.amazonaws.com/dagger/releases/0.1.0-alpha.5/dagger_v0.1.0-alpha.5_darwin_arm64.tar.gz"
    sha256 "5e8072894dcff88775b2e2466537f94776576b73ba5907fb5f98068eb704e60e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://dagger-io.s3.amazonaws.com/dagger/releases/0.1.0-alpha.5/dagger_v0.1.0-alpha.5_linux_amd64.tar.gz"
    sha256 "1f228f1cd5d0cc6d47b7adffe89635bfd5774716b306d23a1ec856607abef2d9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://dagger-io.s3.amazonaws.com/dagger/releases/0.1.0-alpha.5/dagger_v0.1.0-alpha.5_linux_arm64.tar.gz"
    sha256 "3a8c9f001d77a10b06482dad136802328dc74b389d5ac69e60bb35c251e97182"
  end

  def install
    bin.install "dagger"
  end

  test do
    system "#{bin}/dagger version"
  end
end
