import 'package:app/shared/theme/theme.dart';
import 'package:app/utils/time.dart';
import 'package:flutter/material.dart';

// FOR DEBUG
class _WorkTimeData {
  _WorkTimeData({required this.label, this.start, this.end});
  final String label;
  final TimeOfDay? start;
  final TimeOfDay? end;
}

class EstablishmentWorkTime extends StatefulWidget {
  const EstablishmentWorkTime({super.key});

  @override
  State<EstablishmentWorkTime> createState() => _EstablishmentWorkTimeState();
}

class _EstablishmentWorkTimeState extends State<EstablishmentWorkTime> {
  final workTimes = [
    _WorkTimeData(
      label: 'ПН',
      start: TimeOfDay(hour: 8, minute: 0),
      end: TimeOfDay(hour: 22, minute: 0),
    ),
    _WorkTimeData(
      label: 'ВТ',
      start: TimeOfDay(hour: 8, minute: 0),
      end: TimeOfDay(hour: 22, minute: 0),
    ),
    _WorkTimeData(
      label: 'СР',
      start: TimeOfDay(hour: 8, minute: 0),
      end: TimeOfDay(hour: 22, minute: 0),
    ),
    _WorkTimeData(
      label: 'ЧТ',
      start: TimeOfDay(hour: 8, minute: 0),
      end: TimeOfDay(hour: 22, minute: 0),
    ),
    _WorkTimeData(
      label: 'ПТ',
      start: TimeOfDay(hour: 8, minute: 0),
      end: TimeOfDay(hour: 22, minute: 0),
    ),
    _WorkTimeData(
      label: 'СБ',
      start: TimeOfDay(hour: 10, minute: 0),
      end: TimeOfDay(hour: 20, minute: 0),
    ),
    _WorkTimeData(label: 'ВС'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        _WorkTimeTitle(workTimes: workTimes),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          child: Row(
            spacing: 8,
            children: workTimes
                .map(
                  (i) => _WotkTimeCard(
                    workTime: i,
                    index: workTimes.indexOf(i) + 1,
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

class _WorkTimeTitle extends StatelessWidget {
  const _WorkTimeTitle({required this.workTimes});

  final List<_WorkTimeData> workTimes;
  int get weekday => DateTime.now().weekday;

  _WorkTimeData get today => workTimes[weekday - 1];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('График работы', style: theme.custom.labelTextStyle),
          Text(
            today.start == null || today.end == null
                ? 'Выходной'
                : 'c ${timeToStr(today.start)} до ${timeToStr(today.end)}',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: theme.custom.onMuted,
            ),
          ),
        ],
      ),
    );
  }
}

class _WotkTimeCard extends StatelessWidget {
  const _WotkTimeCard({required this.workTime, required this.index});

  final _WorkTimeData workTime;
  final int index;

  int get weekday => DateTime.now().weekday;

  bool get weekdayNow => weekday == index;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      constraints: BoxConstraints(minWidth: 56),
      decoration: BoxDecoration(
        color: weekdayNow ? theme.custom.primary : theme.custom.secondary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            workTime.label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: weekdayNow
                  ? theme.custom.background
                  : theme.custom.foreground,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            timeToStr(workTime.start),
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: weekdayNow
                  ? theme.custom.background
                  : theme.custom.foreground,
            ),
          ),
          Text(
            timeToStr(workTime.end),
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: weekdayNow
                  ? theme.custom.background
                  : theme.custom.foreground,
            ),
          ),
        ],
      ),
    );
  }
}
