diff --git a/bazel_build.sh b/bazel_build.sh
index 086a0b8..c8f1e55 100755
--- a/bazel_build.sh
+++ b/bazel_build.sh
@@ -34,9 +34,7 @@ XLA_TEST_RETURN=0
 BAZEL_BUILD_RETURN=0
 if [[ $IN_CONTAINER -eq 1 ]]; then
   bazel build $(cat $BUILD_OPTS) \
-      tensorflow/tools/pip_package:build_pip_package \
-      //tensorflow:libtensorflow_cc.so \
-      //tensorflow:libtensorflow_framework.so
+      //tensorflow:libtensorflow_trtis.so
   BAZEL_BUILD_RETURN=$?
   mkdir -p /usr/local/lib/tensorflow
   cp bazel-bin/tensorflow/libtensorflow_*.so /usr/local/lib/tensorflow/
