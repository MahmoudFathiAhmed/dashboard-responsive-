import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../controllers/menu_controller.dart';
import '../../../responsive.dart';
import '../../resources/assets_manager.dart';
import '../../resources/string_manager.dart';
import '../../resources/values_manger.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(!Responsive.isDesktop(context))
          IconButton(
              onPressed: context.read<MenuController>().controlMenu,
              icon: const Icon(Icons.menu),
          ),
        if(!Responsive.isMobile(context))
          Text(AppStrings.dashboard,style: Theme.of(context).textTheme.headline6,),
        if(!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context)?2:1,),
        const Expanded(
          child:  SearchField(),
        ),
        const ProfileCard(),
      ],
    );
  }
}
class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  const EdgeInsets.symmetric(horizontal: defaultPadding, vertical: defaultPadding/AppSize.s2),
      margin: const EdgeInsets.only(left: defaultPadding),
      decoration:  BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s10)),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Image.asset(ImageAssets.profilePic,height: AppSize.s38,),
          const Text(AppStrings.userName),
          if(!Responsive.isMobile(context))
            const Padding(padding: EdgeInsets.symmetric(horizontal: defaultPadding/AppSize.s2)),
          const Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: AppStrings.search,
        filled: true,
        fillColor: secondaryColor,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius:  BorderRadius.all(Radius.circular(AppSize.s10),),
        ),
        suffixIcon: InkWell(
          onTap: (){},
          child: Container(
            padding: const EdgeInsets.all(defaultPadding * AppSize.s0_75),
            margin: const EdgeInsets.all(defaultPadding / AppSize.s2),
            decoration: const BoxDecoration(
              borderRadius:  BorderRadius.all(Radius.circular(AppSize.s10),),
              color: primaryColor,
            ),
            child: SvgPicture.asset(IconAssets.search),
          ),
        ),
      ),
    );
  }
}