import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:social_network_mate/models/slide.model.dart';
import 'package:social_network_mate/providers/current_slide.provider.dart';
import 'package:social_network_mate/providers/slides.provider.dart';
import 'package:social_network_mate/views/botttom_slides_preview.widget.dart';
import 'package:social_network_mate/views/slide_preview.widget.dart';
import 'package:social_network_mate/views/slide_settings/slide_settings_pane.widget.dart';
import 'package:social_network_mate/views/widgets/menu_bar.widget.dart';

class CarouselEditor extends ConsumerWidget {
  const CarouselEditor({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CarouselEditorMenuBar(
          onAddSlide: () => ref.read(slidesProvider.notifier).addSlide(),
          onSaveFile: (filePath) async {
            List<Map<String, dynamic>> json = (await ref.read(slidesProvider))
                .map((e) => e.$1.toJson())
                .toList();
            File file = File(filePath); // 4
            await file.writeAsString(jsonEncode(json)); // 5
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Project saved'),
              ),
            );
          },
          onImportFile: (file) async {
            final json = jsonDecode(await file.readAsString()) as List;
            final slides = json
                .map((e) => Slide.fromJson(e as Map<String, dynamic>))
                .toList();
            ref.read(slidesProvider.notifier).setSlides(slides);
          },
          onExportPNG: (folderPath) async {
            var index = 1;
            for (final slide in await ref.read(slidesProvider)) {
              final slideId = slide.$1.id;
              ref.read(currentSlideProvider.notifier).selectSlide(slideId);
              // Ensure slide is displayed
              await Future.delayed(
                const Duration(milliseconds: 100),
              );
              String filePath = '$folderPath/${index}_$slideId.png';
              File file = File(filePath);
              final image =
                  await ref.read(currentSlideProvider.notifier).exportToImage();
              await file.writeAsBytes(image);
              index++;
            }
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Slides exported'),
              ),
            );
          },
          onExportPDF: (filePath) async {
            final pdf = pw.Document();
            for (final slide in await ref.read(slidesProvider)) {
              final slideId = slide.$1.id;
              ref.read(currentSlideProvider.notifier).selectSlide(slideId);
              // Ensure slide is displayed
              await Future.delayed(
                const Duration(milliseconds: 100),
              );

              final image =
                  await ref.read(currentSlideProvider.notifier).exportToImage();

              Size s = Size(
                slide.$1.settings.size.dx,
                slide.$1.settings.size.dy,
              );

              pdf.addPage(
                pw.Page(
                  pageFormat: PdfPageFormat(s.width, s.height),
                  build: (pw.Context context) {
                    return pw.Center(
                      child: pw.Image(pw.MemoryImage(image)),
                    ); // Center
                  },
                ),
              ); // Page
            }

            File file = File(filePath);
            await file.writeAsBytes(await pdf.save());
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Slides exported'),
              ),
            );
          },
        ),
        const Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Preview
              Expanded(
                child: Stack(
                  children: [
                    SlidePreview(),
                  ],
                ),
              ),
              // Settings panel
              SizedBox(
                width: 300,
                child: SlideSettingsPane(),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 125,
          child: BottomSlidesPreview(),
        ),
      ],
    );
  }
}
