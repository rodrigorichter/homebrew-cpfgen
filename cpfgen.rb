# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cpfgen < Formula
  desc ""
  homepage ""
  url "https://github.com/rodrigorichter/cpfgen/archive/0.0.2.tar.gz"
  sha256 "3f2a2fe90ddd8f2bcab71b0878f020575f0c672a575de8e1b6f738f9290d5fda"
  license ""

  # depends_on "cmake" => :build

  def install
    system "make", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test cpfgen`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
