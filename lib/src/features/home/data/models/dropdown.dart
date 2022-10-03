/// A class to pass object in a [AppDropdown] as parameter.

class DropdownModel {
  final String display;
  final String value;

  const DropdownModel(this.display, this.value);

  @override
  bool operator ==(Object model) => model is DropdownModel && model.display == display;

  @override
  int get hashCode => display.hashCode;
}