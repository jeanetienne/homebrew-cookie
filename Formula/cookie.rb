class Cookie < Formula
  desc "Command-line cookie cutter for your app icons and Xcode assets"
  homepage "https://github.com/jeanetienne/Cookie"
  url "https://github.com/jeanetienne/Cookie/archive/0.2.0.tar.gz"
  sha256 "07428b767c3ed21bb74cf218bd1181ea5befe1c216b44945b1ae1f0b734d5840"

  depends_on :xcode => ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/cookie", "-i", "some-image.png"
  end
end
