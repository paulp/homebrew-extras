class Z3 < Formula
  desc "High-performance theorem prover (built with java bindings enabled)"
  homepage "https://github.com/Z3Prover/z3"
  url "https://github.com/Z3Prover/z3/archive/z3-4.11.2.tar.gz"
  sha256 "e3a82431b95412408a9c994466fad7252135c8ed3f719c986cd75c8c5f234c7e"
  head "https://github.com/Z3Prover/z3.git"

  depends_on "openjdk"

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
