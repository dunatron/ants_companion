/// A utility class that provides predefined spacing values for consistent padding
/// and margin sizes throughout the application.
///
/// These constants are defined as `static` and `const`, meaning they are
/// compiled-time constants loaded into memory once when the application starts.
/// The values cannot be changed during runtime, ensuring consistent spacing
/// sizes across the app.
///
/// **Memory Usage:**
/// - `static` means these values are associated with the class itself, not an
///   instance, so they are loaded into memory when the class is referenced for
///   the first time. This typically occurs when the app starts or when the
///   class is first used.
/// - `const` means these values are immutable and allocated in a fixed memory
///   location, reducing memory usage and improving performance because they are
///   shared wherever the same value is needed.
///
/// **Memory Release:**
/// - Since these values are `const`, they are not eligible for garbage collection
///   like regular objects; they remain in memory for the duration of the
///   application's runtime.
/// - These constants do not take up disk space beyond the initial compiled code size.
///   They are part of the program's compiled binary, not dynamically allocated,
///   so they have no runtime impact on disk usage.
///
/// **When and How Memory Can Be Released:**
/// - The memory used by these constants is only released when the application
///   terminates. During runtime, the values are kept in memory for efficiency,
///   and they cannot be explicitly unloaded or released to free up RAM.
/// - To free up the memory, the app itself needs to be closed or restarted.
///
/// Use this class to standardize spacing values throughout the application,
/// providing a clear, consistent layout system.
///
library;

class Spacing {
  /// 56.0 extra extra large spacing
  static const double xxl = 56.0;

  /// 32.0 extra large spacing
  static const double xl = 32.0;

  /// 24.0 very large spacing
  static const double vl = 24.0;

  /// 16.0 large spacing
  static const double l = 16.0;

  /// 12.0 medium spacing
  static const double m = 12.0;

  /// 8.0 neutral spacing
  static const double n = 8.0;

  /// 4.0 small spacing
  static const double s = 4.0;
}
