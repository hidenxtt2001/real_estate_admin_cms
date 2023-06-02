import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_admin_cms/assets/assets.gen.dart';
import 'package:real_estate_admin_cms/config/app_color.dart';
import 'package:real_estate_admin_cms/features/common/presentation/base_page.dart';
import 'package:real_estate_admin_cms/features/home/application/home/home_bloc.dart';
import 'package:real_estate_admin_cms/features/home/enum/tab_type.dart';
import 'package:real_estate_admin_cms/features/home/features/approval/application/approval_bloc/approval_bloc.dart';
import 'package:real_estate_admin_cms/features/home/features/approval/presentation/real_estate_page.dart';
import 'package:real_estate_admin_cms/helper/extensions/context.dart';
import 'package:real_estate_admin_cms/languages/generated/l10n.dart';

import '../features/approval/presentation/approval_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    final index = context.read<HomeBloc>().state.index;
    tabController = TabController(
      length: TabType.values.length,
      initialIndex: index,
      vsync: this,
      animationDuration: Duration.zero,
    );
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        tabController.index = state.index;
      },
      child: Row(
        children: [
          Container(
            color: AppColor.kNeutrals2,
            width: 200,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Assets.icons.logo.svg(
                        width: 50,
                        height: 50,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        s.appName,
                        style: context.textTheme.titleLarge?.copyWith(
                          color: context.colorScheme.background,
                        ),
                      )
                    ],
                  ),
                ),
                BlocSelector<HomeBloc, HomeState, int>(
                  selector: (state) {
                    return state.index;
                  },
                  builder: (context, state) {
                    return ListView.separated(
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 12,
                        );
                      },
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                      ),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              child: _RowItem(
                                type: TabType.values[index],
                                isSelected: index == state,
                                onTap: () {
                                  context
                                      .read<HomeBloc>()
                                      .add(HomeEvent.onTabChanged(index));
                                },
                              ),
                            ),
                            if (index == state)
                              Container(
                                height: 25,
                                width: 5,
                                decoration: BoxDecoration(
                                  color: context.colorScheme.background,
                                  borderRadius: const BorderRadius.horizontal(
                                    right: Radius.circular(8),
                                  ),
                                ),
                              )
                          ],
                        );
                      },
                      itemCount: TabType.values.length,
                    );
                  },
                )
              ],
            ),
          ),
          Expanded(
            child: BlocSelector<HomeBloc, HomeState, int>(
              selector: (state) {
                return state.index;
              },
              builder: (context, state) {
                return TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  dragStartBehavior: DragStartBehavior.down,
                  controller: tabController,
                  children: [
                    Container(),
                    ContainerPage<ApprovalBloc, ApprovalState>(
                      page: const RealEstatePage(),
                    ),
                    ContainerPage<ApprovalBloc, ApprovalState>(
                      page: const ApprovalPage(),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class _RowItem extends StatefulWidget {
  final VoidCallback onTap;
  final TabType type;
  final bool isSelected;

  const _RowItem({
    super.key,
    required this.onTap,
    required this.type,
    required this.isSelected,
  });

  @override
  State<_RowItem> createState() => _RowItemState();
}

class _RowItemState extends State<_RowItem> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    String title = widget.type.getTitle(context);
    Widget icon = widget.type.getIcon(context);

    return GestureDetector(
      onTap: () {
        widget.onTap();
      },
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            isHover = true;
          });
        },
        onExit: (event) {
          setState(() {
            isHover = false;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: isHover
                ? AppColor.kNeutrals6.withOpacity(
                    0.2,
                  )
                : null,
          ),
          child: Row(
            children: [
              SizedBox(width: 25, height: 25, child: icon),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Text(
                  title,
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: context.colorScheme.background,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
