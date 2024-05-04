enum RoutePaths {
  menu,
  tabuleiro3x3,
  tabuleiro4x4,
}

extension RouteValues on RoutePaths {
  String get value {
    switch (this) {
      case RoutePaths.menu:
        return "/";
      case RoutePaths.tabuleiro3x3:
        return "/tabuleiro3x3";
      case RoutePaths.tabuleiro4x4:
        return "/tabuleiro4x4";
      default:
        return "/";
    }
  }
}