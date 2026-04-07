class Shellsuggest < Formula
  desc "Smarter zsh autosuggestions — ranked by your current directory"
  homepage "https://github.com/syi0808/shellsuggest"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syi0808/shellsuggest/releases/download/v0.1.0/shellsuggest-darwin-arm64.tar.gz"
      sha256 "1a7f7c3870c7eb6d51cce098ab857da4eac9d21ee5c2c20960576c8fd2de0761"
    elsif Hardware::CPU.intel?
      url "https://github.com/syi0808/shellsuggest/releases/download/v0.1.0/shellsuggest-darwin-x64.tar.gz"
      sha256 "ba0b8a7eded647bb539665bc9def7d82509f5e60a4b882cf4d74098bba5deb50"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/syi0808/shellsuggest/releases/download/v0.1.0/shellsuggest-linux-arm64.tar.gz"
      sha256 "9435f0563bc082c8f9c07876c86d99aa03b2538b79bcb2216be96bbc632d7351"
    elsif Hardware::CPU.intel?
      url "https://github.com/syi0808/shellsuggest/releases/download/v0.1.0/shellsuggest-linux-x64.tar.gz"
      sha256 "539263078167493c7c84d4a4e53be53f1458e374d00752ebc8cfe3daafe3b05a"
    end
  end

  def install
    bin.install "shellsuggest"
  end

  test do
    system "#{bin}/shellsuggest", "--version"
  end
end
