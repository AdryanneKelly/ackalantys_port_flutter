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
  final ScrollController _scrollController = ScrollController();
  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final projectsKey = GlobalKey();
  final contactKey = GlobalKey();

  void _onMenuClick(int value) {
    switch (value) {
      case 1:
        Scrollable.ensureVisible(
          homeKey.currentContext!,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
        break;
      case 2:
        Scrollable.ensureVisible(
          aboutKey.currentContext!,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
        break;
      case 3:
        Scrollable.ensureVisible(
          projectsKey.currentContext!,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
        break;
      case 4:
        Scrollable.ensureVisible(
          contactKey.currentContext!,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
        break;
      default:
        throw Exception('Invalid menu value');
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          controller: _scrollController,
          child: Column(
            children: [
              HomeWidget(key: homeKey),
              AboutWidget(key: aboutKey),
              ProjectsWidget(key: projectsKey),
              ContactWidget(key: contactKey),
              const FooterWidget()
            ],
          ),
        ),
      ),
    );
  }
}
