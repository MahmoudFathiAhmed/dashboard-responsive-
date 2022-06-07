import '../screens/resources/assets_manager.dart';
import '../screens/resources/string_manager.dart';

class RecentFile {
  final String? icon, title, date, size;

  RecentFile({this.icon, this.title, this.date, this.size});
}

List demoRecentFiles = [
  RecentFile(
    icon: IconAssets.xdFile,
    title: AppStrings.xdFile,
    date: "01-03-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: IconAssets.figmaFile,
    title: AppStrings.figmaFile,
    date: "27-02-2021",
    size: "19.0mb",
  ),
  RecentFile(
    icon: IconAssets.docFile,
    title: AppStrings.documents,
    date: "23-02-2021",
    size: "32.5mb",
  ),
  RecentFile(
    icon: IconAssets.soundFile,
    title: AppStrings.soundFile,
    date: "21-02-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: IconAssets.mediaFile,
    title: AppStrings.mediaFile,
    date: "23-02-2021",
    size: "2.5gb",
  ),
  RecentFile(
    icon: IconAssets.pdfFile,
    title: AppStrings.salesPdf,
    date: "25-02-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: IconAssets.excelFile,
    title: AppStrings.excelFile,
    date: "25-02-2021",
    size: "34.5mb",
  ),
];
