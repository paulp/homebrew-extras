require 'formula'

class Duti < Formula
  homepage 'http://duti.org/'
  url 'https://github.com/downloads/fitterhappier/duti/duti-1.5.1.tar.gz'
  sha1 'ac199f936180a3ac62100ae9a31e107a45330557'

  head 'https://github.com/fitterhappier/duti.git'

  # Replaces arches with the string "@@ARCH@@" so we can fix it post-configure
  def patches
    DATA
  end

  def install
    system "./configure", "--prefix=#{prefix}"
    inreplace "Makefile", "@@ARCH@@", MacOS.preferred_arch
    system "make install"
  end

  def test
    system "#{bin}/duti", "-x", "txt"
  end
end

__END__
diff --git i/configure w/configure
index de1f8e5e47..11d677b322 100755
--- i/configure
+++ w/configure
@@ -2907,17 +2907,22 @@ fi

 	darwin10*)
 	    sdk="/Developer/SDKs/MacOSX10.6.sdk"
-	    macosx_arches="-arch i386 -arch ppc"
+	    macosx_arches="-arch @@ARCH@@"
 	    ;;

 	darwin11*)
 	    sdk="/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.7.sdk"
-	    macosx_arches="-arch i386 -arch x86_64"
+	    macosx_arches="-arch @@ARCH@@"
 	    ;;

 	darwin12*)
 	    sdk="/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.8.sdk"
-	    macosx_arches="-arch i386 -arch x86_64"
+	    macosx_arches="-arch @@ARCH@@"
+	    ;;
+
+	darwin13*)
+	    sdk="/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.9.sdk"
+	    macosx_arches="-arch @@ARCH@@"
 	    ;;
 	*)
 	    { { echo "$as_me:$LINENO: error: ${host_os} is not a supported system" >&5
@@ -2965,6 +2970,10 @@ fi
 	darwin12*)
 	    dep_target="10.8"
 	    ;;
+
+	darwin13*)
+	    dep_target="10.9"
+	    ;;
     esac

     if test -z "$macosx_dep_target"; then
