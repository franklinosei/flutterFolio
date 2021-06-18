import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/models/projects.dart';
import 'package:portfolio/state/state_manager.dart';

class PortfolioSection extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    AsyncValue<List<Project>> projects = watch(projectStateFuture);

    return Container(
        child: projects.when(
            data: (project) {
              return ListView.builder(
                  itemCount: project.length,
                  itemBuilder: (context, index) {
                    print(project[index]);
                    return Text('hello');
                    // return Text(
                    //   '${project[index].title}',
                    //   style: TextStyle(color: kTextColor, fontSize: 120),
                    // );
                  });
            },
            loading: () => Center(child: CircularProgressIndicator()),
            error: (err, _) => Text('${err.toString()}')));
  }
}
