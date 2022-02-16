import 'package:bytebanknew/databases/http/interceptors/logging-interceptor.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';



final Client client =
InterceptedClient.build(interceptors: [LoggingInterceptor()]);

const String baseUrl = 'http://10.0.0.108:8080/transactions';


