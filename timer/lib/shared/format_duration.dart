formatDuration(final Duration duration) {
  String twoDigits(final int n) => n.toString().padLeft(2, '0');
  final String hours =
      duration.inHours != 0 ? '${twoDigits(duration.inHours)}:' : '';
  final String minutes = twoDigits(duration.inMinutes.remainder(60).abs());
  final String seconds = twoDigits(duration.inSeconds.remainder(60).abs());
  return '$hours$minutes:$seconds';
}
