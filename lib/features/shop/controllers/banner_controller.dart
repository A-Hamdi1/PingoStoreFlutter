import 'package:get/get.dart';
import 'package:pingostore/features/shop/models/banner_model.dart';

import '../../../data/repositories/banners/banner_repository.dart';
import '../../../utils/popups/loader.dart';

class BannerController extends GetxController {

  /// Variables
  final isLoading = false.obs;

  final carousalCurrentIndex = 0.obs;
  final RxList<BannerModel> banners= <BannerModel>[].obs;


  @override
  void onInit() {
    fetchBanners();
    super.onInit();
  }

  /// Update Page Navigational Dots
  void updatePageIndicator(index) {
    carousalCurrentIndex.value = index;
  }

  /// Fetch Banners

  Future<void> fetchBanners() async {
    try {
      // Show Loader while Loading categories
      isLoading.value = true;
      // Fetch Banners
      final bannerRepo = Get.put(BannerRepository());
      final banners = await bannerRepo.fetchBanners();

      // Assign Banners
      this.banners.assignAll(banners);
    } catch (e) {
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      //Remove Loader
      isLoading.value = false;
    }
  }


}
