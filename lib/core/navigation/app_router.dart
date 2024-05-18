import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:case_management_tool/features/sign_in/presentation/sign_in_page.dart';
import 'package:injectable/injectable.dart';
part 'app_router.gr.dart';

@lazySingleton
@AutoRouterConfig()
class AppRouter extends _$AppRouter{

  @override
  List<AutoRoute> get routes => [
      AnimatedRoute(page: SignInRoute.page, initial: true)
  ];
}

class AnimatedRoute extends CustomRoute{
  AnimatedRoute({
    super.path,
    super.maintainState,
    super.durationInMilliseconds = 500,
    super.initial,
    super.children,
    super.transitionsBuilder = TransitionsBuilders.fadeIn,
    required super.page,});

}