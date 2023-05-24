import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DynamicLinkService {
  bool isOpenWithLink = false;
  /*static Future<String> createDynamicLink(String parameter) async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    print(packageInfo.packageName);
    String uriPrefix = "https://flutterdevs.page.link";

    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: uriPrefix,
      link: Uri.parse('https://example.com/$parameter'),
      androidParameters: AndroidParameters(
        packageName: packageInfo.packageName,
        minimumVersion: 125,
      ),
      iosParameters: IOSParameters(
        bundleId: packageInfo.packageName,
        minimumVersion: packageInfo.version,
        appStoreId: '123456789',
      ),
      googleAnalyticsParameters: GoogleAnalyticsParameters(
        campaign: 'example-promo',
        medium: 'social',
        source: 'orkut',
      ),
      itunesConnectAnalyticsParameters: ITunesConnectAnalyticsParameters(
        providerToken: '123456',
        campaignToken: 'example-promo',
      ),
      socialMetaTagParameters: SocialMetaTagParameters(
          title: 'Example of a Dynamic Link',
          description: 'This link works whether app is installed or not!',
          imageUrl: Uri.parse(
              "https://images.pexels.com/photos/3841338/pexels-photo-3841338.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260")),
    );

    final PendingDynamicLinkData? initialLink = await FirebaseDynamicLinks.instance.getInitialLink();
    final ShortDynamicLink shortDynamicLink = await parameters.buildShortLink();
    final Uri shortUrl = shortDynamicLink.shortUrl;
    return shortUrl.toString();
  }
*/
  static initDynamicLinks() async {
    final PendingDynamicLinkData? initialLink =
        await FirebaseDynamicLinks.instance.getInitialLink();

    if (initialLink != null) {
      _handleDynamicLink(initialLink);
      //Background / Foreground State
      FirebaseDynamicLinks.instance.onLink.listen((dynamicLinkData) {
        Get.toNamed(dynamicLinkData.link.path);
        _handleDynamicLink(dynamicLinkData);
      }).onError((error) {
        print('onLinkError');
        print(error.message);
      });
    }
  }

  static _handleDynamicLink(PendingDynamicLinkData data) async {
    final Uri? deepLink = data.link;
    if (deepLink == null) {
      return;
    }
    Get.toNamed(deepLink.path);
    if (deepLink.pathSegments.contains('refer')) {
      var title = deepLink.queryParameters['code'];
      if (title != null) {
        print("refercode=$title");
      }
    }
  }
}
