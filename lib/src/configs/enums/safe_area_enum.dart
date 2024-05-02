enum SafeAreaEnum {
  enable(
    label: 'Enable',
    value: true,
  ),
  disable(
    label: 'Disable',
    value: false,
  ),
  ;

  final String label;
  final bool value;

  const SafeAreaEnum({
    required this.label,
    required this.value,
  });

  static SafeAreaEnum fromValue(bool value) {
    return values.firstWhere((element) => element.value == value,
        orElse: () => enable);
  }
}
