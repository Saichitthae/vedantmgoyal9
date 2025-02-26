# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SheltasksCliNightly < Formula
  desc "Sheltasks (Nightly): My CLI friend helping me with my daily tasks"
  homepage "https://github.com/vedantmgoyal9/vedantmgoyal9"
  version "1.1.0-nightly"
  license "MIT"

  depends_on "msitools"

  on_macos do
    on_arm do
      url "https://github.com/vedantmgoyal9/vedantmgoyal9/releases/download/sheltasks-cli/nightly/sheltasks-cli_darwin_arm64.tar.gz"
      sha256 "e741c3babe9d810d06cbc23099db1b6b796298f383f7d5fb8ad35521b175d406"

      def install
        bin.install "sheltasks-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/vedantmgoyal9/vedantmgoyal9/releases/download/sheltasks-cli/nightly/sheltasks-cli_linux_amd64.tar.gz"
      sha256 "bf7620ab564a9b112253e121c1f12d8aa6b93d6a1e5c3e74907fa86d6b72c117"

      def install
        bin.install "sheltasks-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vedantmgoyal9/vedantmgoyal9/releases/download/sheltasks-cli/nightly/sheltasks-cli_linux_arm64.tar.gz"
      sha256 "78aac49379adc2f8e0da547e4172f367341a184ce7ade9c5a35a5cf175dfdcb0"

      def install
        bin.install "sheltasks-cli"
      end
    end
  end

  conflicts_with "sheltasks-cli"
end
