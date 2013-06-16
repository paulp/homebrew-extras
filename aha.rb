require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Aha < Formula
  homepage 'https://github.com/theZiz/aha'
  url 'https://github.com/theZiz/aha/archive/0.4.6.1.tar.gz'
  head 'git://github.com/theZiz/aha.git'
  sha1 '9172aeaf0c8fa9a37051814c9b0ff82c14a13288'
  version '0.4.6.1'

  def install
    system "make"
    bin.install "aha" => "aha"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test aha`.
    system aha
  end
end
