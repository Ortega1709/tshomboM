import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:tshombo/models/dataEmail.dart';

class EmailApi {

  static const serviceId = 'service_kpxs4mf';
  static const templateId = 'template_n8ooitp';
  static const userId = 'bUIWjPAjgs5DsP6FH';

  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  final headers = {'origin': 'http://localhost','Content-Type': 'application/json'};
  late DataEmail dataEmail;


  Future<bool> sendEmail({required String email, required String subject, required String message, required BuildContext context}) async {

      dataEmail = DataEmail(email: email, subject: subject, message: message);

      final body = {
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'user_email': dataEmail.email,
          'user_subject': dataEmail.subject,
          'user_message': dataEmail.message
        }
      };

    final response = await http.post(
      url,
      headers: headers,
      body: json.encode(body)
    );

    if (response.body == "OK") {
      return true;
    } else {
      return false;
    }
  }

}