import 'package:flutter/material.dart';

class QCategoryPicker extends StatefulWidget {
  final List<Map<String, dynamic>> items;
  final String? label;
  final bool? wrapMode;
  final dynamic value;
  final String? Function(int value)? validator;
  final String? hint;

  final Function(
    Map<String, dynamic> item,
    bool selected,
    Function action,
  )? itemBuilder;

  final Function(
    int index,
    String label,
    dynamic value,
    Map<String, dynamic> item,
  ) onChanged;
  const QCategoryPicker({
    Key? key,
    required this.items,
    required this.onChanged,
    this.itemBuilder,
    this.value,
    this.validator,
    this.label,
    this.wrapMode = false,
    this.hint,
  }) : super(key: key);

  @override
  State<QCategoryPicker> createState() => _QCategoryPickerState();
}

class _QCategoryPickerState extends State<QCategoryPicker> {
  List<Map<String, dynamic>> items = [];
  int selectedIndex = -1;

  updateIndex(newIndex) {
    selectedIndex = newIndex;
    setState(() {});
    var item = items[selectedIndex];
    var index = selectedIndex;
    var label = item["label"];
    var value = item["value"];
    widget.onChanged(index, label, value, item);
  }

  getLabel() {
    if (widget.label == null) return Container();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${widget.label}",
          style: TextStyle(
            fontSize: 12.0,
            color: Theme.of(context).textTheme.bodySmall?.color,
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
      ],
    );
  }

  @override
  void initState() {
    items = widget.items;
    if (widget.value != null) {
      selectedIndex = items.indexWhere((i) => i["value"] == widget.value);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FormField(
      initialValue: false,
      validator: (value) => widget.validator!(selectedIndex),
      enabled: true,
      builder: (FormFieldState<bool> field) {
        if (widget.wrapMode == true) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getLabel(),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: List.generate(items.length, (index) {
                    bool selected = selectedIndex == index;
                    var item = items[index];

                    if (widget.itemBuilder != null) {
                      return widget.itemBuilder!(item, selected, () {
                        updateIndex(index);
                      });
                    }

                    return InkWell(
                      onTap: () => updateIndex(index),
                      child: Card(
                        color: selected ? Colors.black : null,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(item["label"]),
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
          );
        }

        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                controller: ScrollController(),
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(items.length, (index) {
                    bool selected = selectedIndex == index;
                    var item = items[index];

                    if (widget.itemBuilder != null) {
                      return widget.itemBuilder!(item, selected, () {
                        updateIndex(index);
                      });
                    }

                    return InkWell(
                      onTap: () => updateIndex(index),
                      child: Card(
                        margin: const EdgeInsets.only(right: 15.0),
                        color: selected
                            ? const Color(0xfffdc620)
                            : const Color(0xffe8e8e8),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15.0,
                            vertical: 8.0,
                          ),
                          child: Text(
                            item["label"],
                            style: TextStyle(
                              color: selected
                                  ? const Color(0xff393e48)
                                  : const Color(0xffa9a9a9),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
