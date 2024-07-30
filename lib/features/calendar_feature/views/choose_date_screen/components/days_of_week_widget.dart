import 'package:tech_task_rmedia/features/calendar_feature/domain/cubit/choose_date_cubit.dart';
import 'package:tech_task_rmedia/file_export.dart';

class DaysOfWeekWidget extends StatelessWidget {
  const DaysOfWeekWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final chooseDate = context.watch<ChooseDateCubit>();
    return SizedBox(
      height: 60.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(
          left: Dimensions.xxxLarge2,
          top: Dimensions.xLarge,
        ),
        itemBuilder: (context, index) => Text(
          chooseDate.days[index],
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontVariations: [
              const FontVariation.weight(600),
            ],
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(
          width: Dimensions.xxxLarge2,
        ),
        itemCount: chooseDate.days.length,
      ),
    );
  }
}
