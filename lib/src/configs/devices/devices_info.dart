class DeviceInfo {
  String? uid;
  String? name;
  String? platformName;
  String? platformVersion;
  String? model;
  bool isPhysicalDevice;
  DeviceInfo({
    this.isPhysicalDevice = true,
    this.uid,
    this.name,
    this.platformName,
    this.platformVersion,
    this.model,
  });
}
