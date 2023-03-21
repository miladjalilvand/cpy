import 'dart:async';
import 'package:flutter/material.dart';



class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  int _seconds = 0;
  bool _isActive = false;
  late Timer _timer;

  void _toggleTimer() {
    setState(() {
      _isActive = !_isActive;
      if (_isActive) {
        _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
          setState(() {
            _seconds++;
          });
        });
      } else {
        _timer.cancel();
      }
    });
  }

  void _pauseTimer() {
    setState(() {
      _isActive = false;
      _timer.cancel();
    });
  }
  void _resetTimer() {
    setState(() {
      _seconds = 0;
      _isActive = false;
      _timer.cancel();
    });
  }

  String _formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    return '$minutes:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _formatTime(_seconds),
              style: const TextStyle(fontSize: 72),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: _isActive ? null : _toggleTimer,
                  child: Text(_isActive ? 'Pause' : 'Start'),
                ),
                const SizedBox(width: 16),
                TextButton(
                  onPressed: _resetTimer,
                  child: const Text('Reset'),
                ),
                const SizedBox(width: 16),
                TextButton(
                  onPressed: _isActive ? _pauseTimer : null,
                  child: const Text('Pause'),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
