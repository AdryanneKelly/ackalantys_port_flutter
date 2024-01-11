import 'package:ackalantys/app/pages/widgets/about_widget.dart';
import 'package:ackalantys/app/pages/widgets/contact_widget.dart';
import 'package:ackalantys/app/pages/widgets/footer_widget.dart';
import 'package:ackalantys/app/pages/widgets/home_widget.dart';
import 'package:ackalantys/app/pages/widgets/projects_widget.dart';
import 'package:ackalantys/app/shared/widgets/menu_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scrollController = ScrollController();
  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final projectsKey = GlobalKey();
  final contactKey = GlobalKey();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void _onMenuClick(int value) {
    final RenderBox renderBox;
    switch (value) {
      case 1:
        renderBox = homeKey.currentContext!.findRenderObject() as RenderBox;
        break;
      case 2:
        renderBox = aboutKey.currentContext!.findRenderObject() as RenderBox;
        break;
      case 3:
        renderBox = projectsKey.currentContext!.findRenderObject() as RenderBox;
        break;
      case 4:
        renderBox = contactKey.currentContext!.findRenderObject() as RenderBox;
        break;
      default:
        throw Exception('Invalid menu value');
    }

    final offset = renderBox.localToGlobal(Offset.zero);
    scrollController.animateTo(
      offset.dy,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MenuWidget(
        onMenuClick: _onMenuClick,
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: RawScrollbar(
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                HomeWidget(key: homeKey),
                AboutWidget(key: aboutKey),
                SizedBox(height: size.height * 0.05),
                ProjectsWidget(key: projectsKey),
                ContactWidget(key: contactKey),
                const FooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
