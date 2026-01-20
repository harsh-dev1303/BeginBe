import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/core/theme/app_pallete.dart';
import 'package:secure_fintech_bankingapp/features/token_preview_screen.dart/domain/entity/specific_date_detail.dart';
import 'package:secure_fintech_bankingapp/features/token_preview_screen.dart/presentation/controller/notifier/token_preview_notifier.dart';


@RoutePage()
class TokenPreviewPage extends ConsumerStatefulWidget {
  final String categoryId;
  const TokenPreviewPage({super.key,required this.categoryId});

  @override
  ConsumerState<TokenPreviewPage> createState() => _TokenPreviewPageState();
}

class _TokenPreviewPageState extends ConsumerState<TokenPreviewPage>{
  int selectedIndex = 0;
  
  @override
  Widget build(BuildContext context) {
     print('TokenPreviewPage build called');
    final tokenPreview = ref.watch(tokenPreviewNotifierProvider(widget.categoryId));
    
    
    return Scaffold(
      appBar: AppBar(title: Text("Token Preview"),),
      body: tokenPreview.when(
        data: (tokenPreviewEntity){
          final getSpecificPreview = tokenPreviewEntity.preview[selectedIndex];
          print("getSpecificPreview :${getSpecificPreview}");
          return Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Counter + Service
            Text(
              tokenPreviewEntity.categoryName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppPallete.whiteColor,
              ),
            ),
            Text(
              tokenPreviewEntity.branchName,
              style: const TextStyle(
                color: AppPallete.greyColor,
              ),
            ),

            const SizedBox(height: 20),

            // Date selector
            _DateSelector(
              previews: tokenPreviewEntity.preview,
              selectedIndex: selectedIndex,
              onSelected: (index) {
                setState(() {
                  print("index:$index");
                  selectedIndex = index;
                  print("selectedIndex:$selectedIndex");
                });
              },
            ),

            const SizedBox(height: 24),

            // Preview data
            _PreviewInfoCard(
              label: "Queue Length",
              value: "${getSpecificPreview.queueLength}",
            ),
            _PreviewInfoCard(
              label: "People Ahead",
              value: "${getSpecificPreview.peopleAhead}",
            ),
            _PreviewInfoCard(
              label: "Estimated Wait Time",
              value: "${getSpecificPreview.estimatedWaitTime} min",
            ),

            const Spacer(),

            // Generate Token button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppPallete.gradient2,
                  splashFactory: InkRipple.splashFactory
                ),
                onPressed: () {
                  // call Generate Token API with:
                  // counterId + selectedPreview.date
                },
                child: const Text("Generate Token"),
              ),
            ),
          ],
        ),
      );
        }, 
        error: (error,stacktrace){
           return RefreshIndicator(
            child:ListView(
              physics: AlwaysScrollableScrollPhysics(),
              children: [
                Center(
                  child: Text(error.toString()),
                )
              ],
            ), 
            onRefresh: ()async{
               await ref.read(tokenPreviewNotifierProvider(widget.categoryId).notifier).retryTokenPreview;
            });
        }, 
        loading: ()=>Center(
          child: CircularProgressIndicator(),
        )
        ),
    );
    
  }
  
}

class _DateSelector extends StatelessWidget {
  final List<SpecificDateDetail> previews;
  final int selectedIndex;
  final Function(int) onSelected;

  const _DateSelector({
    required this.previews,
    required this.selectedIndex,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(previews.length, (index) {
        final isSelected = index == selectedIndex;

        return Expanded(
          child: GestureDetector(
            onTap: () => onSelected(index),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: isSelected
                    ? AppPallete.gradient2
                    : AppPallete.borderColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                previews[index].date,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: isSelected
                      ? AppPallete.whiteColor
                      : AppPallete.greyColor,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

class _PreviewInfoCard extends StatelessWidget {
  final String label;
  final String value;

  const _PreviewInfoCard({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppPallete.borderColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(color: AppPallete.greyColor),
          ),
          Text(
            value,
            style: const TextStyle(
              color: AppPallete.whiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

 