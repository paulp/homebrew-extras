class Z3 < Formula
  desc "High-performance theorem prover"
  homepage "https://github.com/Z3Prover/z3"
  url "https://github.com/Z3Prover/z3/archive/z3-4.5.0.tar.gz"
  sha256 "aeae1d239c5e06ac183be7dd853775b84698db1265cb2258e5918a28372d4a0c"
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
