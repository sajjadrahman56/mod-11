import 'package:task_manager_101/data/model/task.dart';

class TaskListModel {
  String? status;
  List<Task>? data;

  TaskListModel({this.status, this.data});

  TaskListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Task>[];
      json['data'].forEach((v) {
        data!.add(new Task.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

