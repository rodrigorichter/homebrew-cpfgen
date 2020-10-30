class Cpfgen < Formula
  desc "Prints a valid brazilian CPF number."
  homepage "https://github.com/rodrigorichter/cpfgen"
  url "https://github.com/rodrigorichter/cpfgen/archive/0.0.4.tar.gz"
  sha256 "334eb4e4101514ad03b91fea4b637014dd2801030348dc1e4c1ea9473dc16dc3"
  license "MIT"

  def install
    system "mkdir", "#{prefix}/bin"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    output = shell_output("#{bin}/cpfgen")
    assert_equal(output.length, 12)
  end
end
