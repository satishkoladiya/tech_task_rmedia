import 'package:tech_task_rmedia/common/shadow_widget.dart';
import 'package:tech_task_rmedia/file_export.dart';

class MainScreenNavBar extends StatelessWidget {
  const MainScreenNavBar(
      {super.key, required this.index, required this.navigationShell});

  final int index;
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(Dimensions.xLarge),
          topLeft: Radius.circular(Dimensions.xLarge),
        ),
        color: AppColors.neutralColors0,
        boxShadow: [RMShadow.large],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Spacer(),
          navBarItem(
            context: context,
            naviIndex: index,
            itemIndex: 2,
            activeLabel: "Dashboard",
            icon: SvgPicture.asset(
              'assets/icons/category.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/category.svg',
              colorFilter: const ColorFilter.mode(
                  AppColors.neutralColors900, BlendMode.srcIn),
            ),
          ),
          const Spacer(),
          navBarItem(
            context: context,
            naviIndex: index,
            itemIndex: 3,
            activeLabel: "project",
            icon: SvgPicture.asset(
              'assets/icons/Folder.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/Folder.svg',
              colorFilter: const ColorFilter.mode(
                  AppColors.neutralColors900, BlendMode.srcIn),
            ),
          ),
          const Spacer(
            flex: 3,
          ),
          navBarItem(
            context: context,
            naviIndex: index,
            itemIndex: 1,
            activeLabel: "calendar",
            icon: SvgPicture.asset(
              'assets/icons/calendar.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/calendar.svg',
              colorFilter: const ColorFilter.mode(
                  AppColors.neutralColors900, BlendMode.srcIn),
            ),
          ),
          const Spacer(),
          navBarItem(
            context: context,
            naviIndex: index,
            itemIndex: 0,
            activeLabel: "memo",
            icon: Image.asset('assets/icons/Memoji.png'),
            activeIcon: Image.asset('assets/icons/Memoji.png'),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget navBarItem({
    required BuildContext context,
    required int itemIndex,
    required int naviIndex,
    required Widget activeIcon,
    required String activeLabel,
    required Widget icon,
    final VoidCallback? onTap,
  }) {
    final selected = itemIndex == naviIndex;
    return InkResponse(
      onTap: () {
        navigationShell.goBranch(
          itemIndex,
          // A common pattern when using bottom navigation bars is to support
          // navigating to the initial location when tapping the item that is
          // already active. This example demonstrates how to support this behavior,
          // using the initialLocation parameter of goBranch.
          initialLocation: itemIndex == navigationShell.currentIndex,
        );
      },
      child: AnimatedContainer(
        key: Key(activeLabel),
        height: ScreenUtil().screenHeight / 10,
        duration: const Duration(milliseconds: 400),
        padding: EdgeInsets.only(bottom: 25.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10.h,
            ),
            selected ? activeIcon : icon,
          ],
        ),
      ),
    );
  }
}
