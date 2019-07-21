class Cookie < Formula
  desc "Command-line cookie cutter for your app icons and Xcode assets"
  homepage "https://github.com/jeanetienne/Cookie"
  head "https://github.com/jeanetienne/Cookie.git"

  version "0.3.0"
  url "https://github.com/jeanetienne/Cookie/archive/#{version}.tar.gz"
  sha256 "2f9d889761ee151118a51f2d76eab3546e1d1778fec2117f5a60afce29bc62c0"

  depends_on :xcode => ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/cookie", "-i", "some-image.png"
  end
end
