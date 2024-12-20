import '../components/my_imports.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: Utils.getScreenWidth(context),
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(onTap: () {  },),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextButton(
                onPressed: () {
                },
                child: Text(
                  navTitles[i],
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: colors.whitePrimary,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
