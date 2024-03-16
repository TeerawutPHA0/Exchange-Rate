// ignore: file_names
// ignore_for_file: camel_case_types

class EC_Rates {
  String timestamp;
  String api;
  Data data;

  EC_Rates({
    required this.timestamp,
    required this.api,
    required this.data,
  });

  factory EC_Rates.fromMap(Map<String, dynamic> json) {
    return EC_Rates(
      timestamp: json['timestamp'] ?? '',
      api: json['api'] ?? '',
      data: Data.fromMap(json['data'] ?? {}),
    );
  }
}

class Data {
  Data_header data_header;
  List<Data_detail> data_detail;

  Data({
    required this.data_header,
    required this.data_detail,
  });

  factory Data.fromMap(Map<String, dynamic> json) {
    return Data(
      data_header: Data_header.fromMap(json['data_header'] ?? {}),
      data_detail: (json['data_detail'] as List)
          .map((statMap) => Data_detail.fromMap(statMap))
          .toList(),
    );
  }
}

class Data_header {
  String report_name_eng;
  String report_name_th;
  String report_uoq_name_eng;
  String report_uoq_name_th;
  String last_updated;
  List<Report_source_of_data> report_source_of_data;
  List<Report_remark> report_remark;

  Data_header(
      {required this.report_name_eng,
      required this.report_name_th,
      required this.report_uoq_name_eng,
      required this.report_uoq_name_th,
      required this.last_updated,
      required this.report_source_of_data,
      required this.report_remark});

  factory Data_header.fromMap(Map<String, dynamic> json) {
    return Data_header(
      report_name_eng: json['report_name_eng'] ?? '',
      report_name_th: json['report_name_th'] ?? '',
      report_uoq_name_eng: json['report_uoq_name_eng'] ?? '',
      report_uoq_name_th: json['report_uoq_name_th'] ?? '',
      last_updated: json['last_updated'] ?? '',
      report_source_of_data: (json['report_source_of_data'] as List)
          .map((statMap) => Report_source_of_data.fromMap(statMap))
          .toList(),
      report_remark: (json['report_remark'] as List)
          .map((statMap) => Report_remark.fromMap(statMap))
          .toList(),
    );
  }
}

class Report_source_of_data {
  String source_of_data_eng;
  String source_of_data_th;

  Report_source_of_data({
    required this.source_of_data_eng,
    required this.source_of_data_th,
  });

  factory Report_source_of_data.fromMap(Map<String, dynamic> json) {
    return Report_source_of_data(
      source_of_data_eng: json['report_name_eng'] ?? '',
      source_of_data_th: json['report_name_th'] ?? '',
    );
  }
}

class Report_remark {
  String report_remark_eng;
  String report_remark_th;

  Report_remark({
    required this.report_remark_eng,
    required this.report_remark_th,
  });

  factory Report_remark.fromMap(Map<String, dynamic> json) {
    return Report_remark(
      report_remark_eng: json['report_remark_eng'] ?? '',
      report_remark_th: json['report_remark_th'] ?? '',
    );
  }
}

class Data_detail {
  String period;
  String currency_id;
  String currency_name_th;
  String currency_name_eng;
  String buying_sight;
  String buying_transfer;
  String selling;
  String mid_rate;

  Data_detail({
    required this.period,
    required this.currency_id,
    required this.currency_name_th,
    required this.currency_name_eng,
    required this.buying_sight,
    required this.buying_transfer,
    required this.selling,
    required this.mid_rate,
  });

  factory Data_detail.fromMap(Map<String, dynamic> json) {
    return Data_detail(
      period: json['period'] ?? '',
      currency_id: json['currency_id'] ?? '',
      currency_name_th: json['currency_name_th'] ?? '',
      currency_name_eng: json['currency_name_eng'] ?? '',
      buying_sight: json['buying_sight'] ?? '',
      buying_transfer: json['buying_transfer'] ?? '',
      selling: json['selling'] ?? '',
      mid_rate: json['mid_rate'] ?? '',
    );
  }
}
