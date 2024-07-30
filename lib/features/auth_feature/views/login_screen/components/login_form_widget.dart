import 'package:tech_task_rmedia/features/auth_feature/domain/cubit_controller/login_cubit.dart';
import 'package:tech_task_rmedia/features/project_feature/views/project_screen/project_screen.dart';
import 'package:tech_task_rmedia/file_export.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.watch<LoginCubit>();
    return Form(
      child: Column(
        children: [
          SizedBox(
            height: Dimensions.xLarge.h,
          ),
          RegularTextField(
            keyboardType: TextInputType.emailAddress,
            label: "Username / Email",
            controller: loginCubit.userName,
            hintText: "Enter your username or email",
          ),
          SizedBox(
            height: Dimensions.xLarge.h,
          ),
          RegularTextField(
            keyboardType: TextInputType.emailAddress,
            label: "Password",
            controller: loginCubit.password,
            protectedText: loginCubit.passwordSecure,
            hintText: "Enter your password",
            suffix: IconButton(
              onPressed: () => loginCubit.updatePasswordIcon(),
              icon: SvgPicture.asset(
                loginCubit.passwordSecure
                    ? 'assets/icons/eye.svg'
                    : 'assets/icons/eye-slash.svg',
              ),
            ),
          ),
          SizedBox(
            height: Dimensions.xLarge.h,
          ),

          ///forgot password
          Align(
            alignment: Alignment.topRight,
            child: Text(
              "Forgot Password ?",
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontVariations: [const FontVariation.weight(600)],
              ),
            ),
          ),
          SizedBox(
            height: Dimensions.xLarge.h,
          ),

          ///login button
          ButtonWidget(
            height: 56.h,
            width: ScreenUtil().screenWidth / 1.2,
            name: "Login",
            disabled: loginCubit.loginButtonDisabled(),
            textColors: AppColors.neutralColors0,
            onTap: () => GoRouter.of(context).go(ProjectScreen.routeName),
            containerColor: AppColors.neutralColors900,
            borderColor: AppColors.neutralColors900,
            radius: 8,
          ),
        ],
      ),
    );
  }
}
