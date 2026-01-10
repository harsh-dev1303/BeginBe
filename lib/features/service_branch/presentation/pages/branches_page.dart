import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/features/service_branch/presentation/controller/notifier/branches_notifier.dart';


@RoutePage()
class BranchesPage extends ConsumerWidget {
  final String serviceId;
  const BranchesPage({super.key, required this.serviceId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final branches = ref.watch(branchesNotifierProvider(serviceId));
    return Scaffold(
      appBar: AppBar(title: Text("Branches")),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: branches.when(
          data: (branches){
             final branchList = branches.branchList;
             if(branchList.isEmpty){
               return Center(
                 child: RefreshIndicator(
                   onRefresh: ()async{
                   await ref.read(branchesNotifierProvider(serviceId).notifier).refresh();
                               },
                  child: ListView(
                    physics: AlwaysScrollableScrollPhysics(),
                    children: [
                      Center(
                        child: Text("No branches available to show for this service!"),
                      )
                    ],
                  ), 
                  ),
               );
             }

             return ListView.separated(
              itemCount: branchList.length,
              separatorBuilder: (_, _) => Divider(height: 1),
              itemBuilder: (context, index){
                final branch = branchList[index];
                return ListTile(
                  leading: CircleAvatar(child: Icon(Icons.business)),
                  title: Text(
                    branch.branchName,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle:Text(
                    branch.branchAddress,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                  ) ,
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                     //will navigate to categories page afterwards
                  },
                );
              },
            ); 
          }, 
          error: (error,stacktrace){
            return RefreshIndicator(
              onRefresh: ()async{
                 await ref.read(branchesNotifierProvider(serviceId).notifier).refresh();
              },
              child: ListView(
                physics: AlwaysScrollableScrollPhysics(),
                children: [
                  Center(
                    child: Text(error.toString())
                  )
                ],
              ), 
              );

          }, 
          loading: (){
             return Center(child: CircularProgressIndicator());
          }
          ),
      ),
    );
  }
}
