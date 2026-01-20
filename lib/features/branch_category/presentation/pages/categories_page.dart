import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/core/router/app_router.dart';
import 'package:secure_fintech_bankingapp/core/theme/app_pallete.dart';
import 'package:secure_fintech_bankingapp/features/branch_category/domain/entity/single_category_entity.dart';
import 'package:secure_fintech_bankingapp/features/branch_category/presentation/controller/notifier/category_notifier.dart';


@RoutePage()
class CategoriesPage extends ConsumerWidget {
  final String branchId;
  const CategoriesPage({super.key,required this.branchId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryNotifier = ref.watch(categoryNotifierProvider(branchId));
    return Scaffold(
      appBar: AppBar(title: Text("Branch Categories"),),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: categoryNotifier.when(
          data: (categoriesEntity){
             final categories = categoriesEntity.categories;
             print("categories entity available with categories:${categories}");

             if(categories.isEmpty){
              print("categories is empty");
              return RefreshIndicator(
                onRefresh: ()async{
                  await ref.read(categoryNotifierProvider(branchId).notifier).refresh();
                },
                child: ListView(
                  physics: AlwaysScrollableScrollPhysics(),
                  children: [
                    Center(
                      child:Text("No categories to show!"),
                    )                    
                  ],
                ), 
                );
             }

             return ListView.separated(
              itemCount: 10,
              itemBuilder: (buildContext, index){
                // final category = categories[index];        //as of now dummy data is shown for counters 
                // print("categories is not empty:$category");
                return  _CounterCard(
                  counterName: "Counter ${index + 1}", 
                  queueLength: 6 + index, 
                  estimatedWait: "${10 + index * 3} min",
                  categoryId: categories[0].categoryId,
                  isOpen: index % 2 == 0,
                  ) ;                                       //_buildCategoryCard(category);

              }, separatorBuilder: (_, _) =>const SizedBox(height: 12),
              );


          }, 
          error: (error,stackTrace){
            return Center(
              child: Text(error.toString())
              );

          }, 
          loading: ()=>Center(
            child: CircularProgressIndicator(),
          )
          ),
      ),
    );
  }
}


Widget _buildCategoryCard(SingleCategoryEntity category) {
    print("category card running...");
    return Card(
      margin: const EdgeInsets.only(bottom: 12.0),
      elevation: 2,
      child: InkWell(
        onTap: () {
          // Navigate to next page when required
        },
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                category.categoryName,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(Icons.category, size: 16, color: Colors.grey),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      'Category ID: ${category.categoryId.substring(0, 8)}...',
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ),
                ],
              ),
              // const SizedBox(height: 8),
              // Row(
              //   children: [
              //     const Icon(Icons.calendar_today, size: 16, color: Colors.grey),
              //     const SizedBox(width: 4),
              //     Text(
              //       'Created: ${category.createdAt}',
              //       style: const TextStyle(fontSize: 12, color: Colors.grey),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }


//Counter Card
class _CounterCard extends StatelessWidget {
  final String counterName;
  final int queueLength;
  final String estimatedWait;
  final String categoryId;
  final bool isOpen;

  const _CounterCard({
    required this.counterName,
    required this.queueLength,
    required this.estimatedWait,
    required this.categoryId,
    required this.isOpen,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isOpen ? () {
        context.router.navigate(TokenPreviewRoute(categoryId: categoryId));
      } : null,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppPallete.borderColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            // Left info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    counterName,
                    style: const TextStyle(
                      color: AppPallete.whiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),

                  _InfoText(
                    label: "Queue",
                    value: "$queueLength people",
                  ),
                  _InfoText(
                    label: "Est. Wait",
                    value: estimatedWait,
                  ),
                ],
              ),
            ),

            // Status chip
            _StatusChip(isOpen: isOpen),
          ],
        ),
      ),
    );
  }
}

//Info Row Text
class _InfoText extends StatelessWidget {
  final String label;
  final String value;

  const _InfoText({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Text(
        "$label: $value",
        style: const TextStyle(
          color: AppPallete.greyColor,
          fontSize: 13,
        ),
      ),
    );
  }
}

//Status Chip (OPEN / CLOSED)
class _StatusChip extends StatelessWidget {
  final bool isOpen;

  const _StatusChip({required this.isOpen});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: isOpen
            ? AppPallete.gradient3.withOpacity(0.15)
            : AppPallete.errorColor.withOpacity(0.15),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        isOpen ? "OPEN" : "CLOSED",
        style: TextStyle(
          color: isOpen
              ? AppPallete.gradient3
              : AppPallete.errorColor,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }
}

