class Z3 < Formula
  desc "High-performance theorem prover (built with java bindings enabled)"
  homepage "https://github.com/Z3Prover/z3"
  url "https://github.com/Z3Prover/z3/archive/z3-4.8.8.tar.gz"
  sha256 "6962facdcdea287c5eeb1583debe33ee23043144d0e5308344e6a8ee4503bcff"
  head "https://github.com/Z3Prover/z3.git"

  depends_on :java => "1.8+"

  def install
    python3 = Formula["python"].bin/"python3"
  	xy = Language::Python.major_minor_version python3
  	system python3, "scripts/mk_make.py",
  	                 "--prefix=#{prefix}",
  	                 "--python",
  	                 "--pypkgdir=#{lib}/python#{xy}/site-packages",
  	                 "--staticlib",
  	                 "--java"

    cd "build" do
      system "make"
      system "make", "install"
    end

    pkgshare.install "examples"
  end

  test do
    system ENV.cc, "-I#{include}", "-L#{lib}", "-lz3",
           pkgshare/"examples/c/test_capi.c", "-o", testpath/"test"
    system "./test"
  end

end
