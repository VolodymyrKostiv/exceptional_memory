import '../enums/status.dart';

class StatusStringHelper {
  static String getStringByStatus(Status status) {
    switch (status) {
      case Status.notStarted:
        return 'Not started';
      case Status.inProgress:
        return 'In progress';
      case Status.finished:
        return 'Finished';
      default:
        return 'Not started';
    }
  }

  static Status getStatusByString(String status) {
    switch (status) {
      case 'Not started':
        return Status.notStarted;
      case 'In progress':
        return Status.inProgress;
      case 'Finished':
        return Status.finished;
      default:
        return Status.notStarted;
    }
  }
}
