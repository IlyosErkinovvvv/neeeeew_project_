import 'package:_neeeeew_project_/data/model/eduOn_model.dart';
import 'package:_neeeeew_project_/data/service/get_eduOn_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(builder: (context, state) => _scaffold());
  }

  Scaffold _scaffold() {
    return Scaffold(
      appBar: AppBar(title: const Text('EduOn')),
      body: Column(
        children: [
          FutureBuilder(
            future: EduOnService().getEduOnService(),
            builder: (context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              } else {
                List<MyService> data = snapshot.data;
                return ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(data[index].name.toString()),
                      subtitle: Text(data[index].id.toString()),
                    );
                  },
                  itemCount: data.length,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
