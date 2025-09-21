class DebounceTap {
  static final Map<String, bool> _tapLocks = {};

  static bool canTap(String key,
      {Duration duration = const Duration(milliseconds: 2000)}) {
    if (_tapLocks[key] == true) return false;

    _tapLocks[key] = true;
    Future.delayed(duration, () => _tapLocks[key] = false);
    return true;
  }
}
