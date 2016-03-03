class Z3 < Formula
  desc "High-performance theorem prover"
  homepage "https://github.com/Z3Prover/z3"
  url "https://github.com/Z3Prover/z3/archive/z3-4.4.1.tar.gz"
  sha256 "50967cca12c5c6e1612d0ccf8b6ebf5f99840a783d6cf5216336a2b59c37c0ce"
  head "https://github.com/Z3Prover/z3.git"
  depends_on :java => "1.7+"

  def install
    system "python", "scripts/mk_make.py", "--prefix=#{prefix}", "--staticlib", "--java"
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
