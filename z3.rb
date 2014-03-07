require 'formula'

class Z3 < Formula
  homepage 'http://z3.codeplex.com'
  head 'https://git01.codeplex.com/z3.git', :branch => 'unstable'

  def install
    ENV['CXX'] = 'g++' # Select g++ because it supports OpenMP whereas Clang does not.
    system 'python', 'scripts/mk_make.py', "--prefix=#{HOMEBREW_PREFIX}", "--java"
    cd 'build' do
      system 'make'
      system 'make', 'install'
    end
  end

  test do
    system "z3", "--version"
  end

end
