### 0.0.8










* rename MulleObjCLoader category to MulleObjCDeps so generated dependency declarations are provided via MulleObjCDeps
* switch generated include from objc-loader.inc to objc-deps.inc and update reflect headers to match
* export macro widened to export symbols when built as part of foundation base
* use `mulle_fprintf` for NSUUID error output for consistent project logging
