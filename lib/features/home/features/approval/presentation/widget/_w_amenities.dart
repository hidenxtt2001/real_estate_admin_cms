import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate_admin_cms/config/app_color.dart';
import 'package:real_estate_admin_cms/config/app_size.dart';
import 'package:real_estate_admin_cms/core/data/estate/model/amenity.dart';
import 'package:real_estate_admin_cms/features/home/features/approval/application/real_estate_detail/real_estate_detail_bloc.dart';
import 'package:real_estate_admin_cms/helper/extensions/context.dart';
import 'package:real_estate_admin_cms/languages/generated/l10n.dart';

class WAmenities extends StatelessWidget {
  const WAmenities({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSize.extraWidthDimens,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            s.amenities,
            style: context.textTheme.bodyLarge?.copyWith(
              color: AppColor.kNeutrals1,
              fontWeight: FontWeight.w700,
            ),
          ),
          AppSize.largeHeightDimens.verticalSpace,
          SizedBox(
            height: 60.h,
            child: BlocSelector<RealEstateDetailBloc, RealEstateDetailState,
                List<Amenity>>(
              selector: (state) {
                return state.estate?.amenities ?? [];
              },
              builder: (context, state) {
                return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final item = state[index];
                    return ConstrainedBox(
                      constraints:
                          BoxConstraints(maxHeight: 50.h, minWidth: 50.w),
                      child: Column(
                        children: [
                          item.icon(
                                // color: AppColor.kNeutrals,
                                width: 30.w,
                                height: 30.h,
                              ) ??
                              Container(),
                          AppSize.mediumHeightDimens.verticalSpace,
                          Text(
                            item.title(context) ?? '',
                            style: context.textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: state.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return AppSize.largeWidthDimens.horizontalSpace;
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
