import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_network_mate/providers/theme.provider.dart';

class CarouselEditorMenuBar extends ConsumerWidget {
  final VoidCallback onAddSlide;
  final Function(String filePath) onSaveFile;
  final Function(File file) onImportFile;
  final Function(String directoryPath)? onExportPNG;
  final Function(String filePath)? onExportPDF;

  const CarouselEditorMenuBar({
    super.key,
    required this.onAddSlide,
    required this.onSaveFile,
    required this.onImportFile,
    this.onExportPNG,
    this.onExportPDF,
  });

  void _onSaveProject() async {
    String? outputFile = await FilePicker.platform.saveFile(
      type: FileType.custom,
      allowedExtensions: ['sncproject'],
      dialogTitle: 'Please select an output file:',
      fileName: 'project.sncproject',
    );

    if (outputFile != null) {
      onSaveFile(
        outputFile.endsWith('.sncproject')
            ? outputFile
            : '$outputFile.sncproject',
      );
    }
  }

  void _onImportProject(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null && result.files.single.path != null) {
      File file = File(result.files.single.path!);
      if (!file.existsSync()) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('No project found'),
          ),
        );
        return;
      }
      onImportFile(file);
    }
  }

  void _onExportPNG() async {
    String? selectedDirectory = await FilePicker.platform.getDirectoryPath();

    if (selectedDirectory != null) {
      onExportPNG?.call(selectedDirectory);
    }
  }

  void _onExportPDF() async {
    String? outputFile = await FilePicker.platform.saveFile(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
      dialogTitle: 'Please select an output file:',
      fileName: 'project.pdf',
    );

    if (outputFile != null) {
      onExportPDF?.call(outputFile);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                icon: const Icon(Icons.add_outlined),
                onPressed: onAddSlide,
                label: const Text('Add Slide'),
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.save_outlined),
                onPressed: _onSaveProject,
                label: const Text('Save Project'),
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.import_export_outlined),
                onPressed: () => _onImportProject(context),
                label: const Text('Import Project'),
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.picture_as_pdf_outlined),
                onPressed: _onExportPDF,
                label: const Text('Export to PDF'),
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.picture_in_picture_outlined),
                onPressed: _onExportPNG,
                label: const Text('Export to PNG'),
              ),
            ]
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: e,
                  ),
                )
                .toList(),
          ),
          Switch(
            value: ref.watch(themeProvider) == ThemeValue.light,
            onChanged: (isLightTheme) {
              ref
                  .read(themeProvider.notifier)
                  .setTheme(isLightTheme ? ThemeValue.light : ThemeValue.dark);
            },
          ),
        ],
      ),
    );
  }
}
