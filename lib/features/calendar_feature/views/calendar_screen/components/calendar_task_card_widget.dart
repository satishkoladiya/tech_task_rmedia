import 'package:tech_task_rmedia/common/shadow_widget.dart';
import 'package:tech_task_rmedia/file_export.dart';

class CalendarTaskCardWidget extends StatelessWidget {
  const CalendarTaskCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: Dimensions.small3),
      decoration: BoxDecoration(
        color: AppColors.neutralColors0,
        border: Border.all(
          color: AppColors.neutralColors50,
        ),
        borderRadius:
            const BorderRadius.all(Radius.circular(Dimensions.small2)),
        boxShadow: [
          RMShadow.medium2,
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(Dimensions.medium),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Meeting Concept',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontVariations: [const FontVariation.weight(500)],
                  ),
                ),
                const SizedBox(height: Dimensions.small),
                Text(
                  'Due Date : Mon, 12 Jan 2023',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontVariations: [
                      const FontVariation.weight(400),
                    ],
                  ),
                ),
              ],
            ),
            const Icon(
              Icons.check_box_rounded,
              color: AppColors.additionalGreen,
            ),
          ],
        ),
      ),
    );
  }
}
