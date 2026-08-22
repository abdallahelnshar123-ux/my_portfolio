import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../data/tech_icons.dart';
import '../models/floating_icon_model.dart';

const _minIconSize = 24.0;
const _maxIconSize = 60.0;
const _minSpeed = 6.0;
const _maxSpeed = 16.0;
const _spacing = 120.0;

class FloatingBackgroundController extends ChangeNotifier {
  FloatingBackgroundController();

  final Random _random = Random();
  final List<FloatingIconModel> icons = [];
  late final Ticker _ticker;
  Duration _lastFrame = Duration.zero;
  late final double _worldHeight = _screenSize.height * 4;
  late Size _screenSize;
  bool _initialized = false;

  void initialize({
    required TickerProvider vsync,
    required Size screenSize,
    int iconCount = 20,
  }) {
    if (_initialized) return;
    _initialized = true;
    _screenSize = screenSize;
    _generateIcons(iconCount);
    _ticker = vsync.createTicker(_onTick)..start();
  }

  void updateScreenSize(Size size) {
    _screenSize = size;
  }

  void _generateIcons(int count) {
    while (icons.length < count) {
      final position = Offset(
        _random.nextDouble() * _screenSize.width,
        _random.nextDouble() * _worldHeight,
      );
      bool overlap = false;
      for (final icon in icons) {
        if ((icon.position - position).distance < _spacing) {
          overlap = true;
          break;
        }
      }
      if (overlap) continue;
      final speed = _minSpeed + _random.nextDouble() * (_maxSpeed - _minSpeed);
      icons.add(
        FloatingIconModel(
          asset: techIcons[_random.nextInt(techIcons.length)],
          size:
              _minIconSize +
              _random.nextDouble() * (_maxIconSize - _minIconSize),
          position: position,
          velocity: Offset((_random.nextDouble() - 0.5) * 8, -speed),
        ),
      );
    }
  }

  void _onTick(Duration elapsed) {
    final delta =
        (elapsed - _lastFrame).inMicroseconds / Duration.microsecondsPerSecond;
    _lastFrame = elapsed;
    if (delta == 0) return;
    for (final icon in icons) {
      icon.position += icon.velocity * delta;
      bool outside =
          icon.position.dx < -icon.size ||
          icon.position.dx > _screenSize.width + icon.size ||
          icon.position.dy < -icon.size ||
          icon.position.dy > _worldHeight + icon.size;
      if (outside) {
        final speed =
            _minSpeed + _random.nextDouble() * (_maxSpeed - _minSpeed);
        icon
          ..asset = techIcons[_random.nextInt(techIcons.length)]
          ..size =
              _minIconSize +
              _random.nextDouble() * (_maxIconSize - _minIconSize)
          ..position = Offset(
            _random.nextDouble() * _screenSize.width,
            _random.nextDouble() * _worldHeight,
          )
          ..velocity = Offset((_random.nextDouble() - 0.5) * 8, -speed);
      }
    }
    notifyListeners();
  }

  @override
  void dispose() {
    if (_initialized) {
      _ticker.dispose();
    }
    super.dispose();
  }
}
