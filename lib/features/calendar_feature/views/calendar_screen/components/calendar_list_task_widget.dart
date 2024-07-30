import 'package:tech_task_rmedia/features/calendar_feature/views/calendar_screen/components/calendar_task_card_widget.dart';
import 'package:tech_task_rmedia/file_export.dart';

class CalendarListTask extends StatelessWidget {
  const CalendarListTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.neutralColors0,
      padding: const EdgeInsets.only(top: Dimensions.medium),
      child: SizedBox(
        height: ScreenUtil().screenHeight / 2.4,
        child: ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.all(Dimensions.xLarge),
          itemBuilder: (context, index) => const CalendarTaskCardWidget(),
          separatorBuilder: (context, index) => const SizedBox(
            height: Dimensions.medium,
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
