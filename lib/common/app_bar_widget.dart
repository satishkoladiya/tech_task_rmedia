import 'package:badges/badges.dart' as badges;
import 'package:tech_task_rmedia/file_export.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final Widget? titleWidget;
  final List<Widget>? actions;
  final bool centerTitle;
  final Widget? bottom;
  final ShapeBorder? shape;
  final String? image;
  final Widget? leading;
  final double? leadingWidth;
  final double? toolbarHeight;

  const AppBarWidget({
    super.key,
    this.titleWidget,
    this.actions,
    this.centerTitle = false,
    this.toolbarHeight,
    this.bottom,
    this.shape,
    this.image,
    this.leading,
    this.leadingWidth,
  });
  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
      ),
      centerTitle: centerTitle,
      scrolledUnderElevation: 0,
      elevation: 0,
      leading: leading ??
          Padding(
            padding: const EdgeInsets.only(
              left: Dimensions.xLarge,
            ),
            child: SvgPicture.asset(
              'assets/icons/menu.svg',
            ),
          ),
      leadingWidth: leadingWidth ?? (kToolbarHeight + Dimensions.small2),
      actions: [
        Container(
          margin: EdgeInsets.only(right: Dimensions.large.w),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.neutralColors300, width: 1.5),
            borderRadius: const BorderRadius.all(
              Radius.circular(Dimensions.small2),
            ),
          ),
          child: badges.Badge(
            position: badges.BadgePosition.topEnd(top: 1.6, end: 3),
            child: SvgPicture.asset(
              'assets/icons/Notification.svg',
            ),
          ),
        ),
        ...?actions,
      ],
      title: titleWidget,
      bottom: bottom != null
          ? PreferredSize(
              preferredSize: const Size.fromHeight(220),
              child: bottom!,
            )
          : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight ?? kToolbarHeight);
}
