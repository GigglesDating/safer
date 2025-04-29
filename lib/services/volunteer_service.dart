import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'dart:html' as html;

class VolunteerService {
  final SupabaseClient _supabase = Supabase.instance.client;

  void _log(String message) {
    html.window.console.log(message);
  }

  // Test function to verify Supabase connectivity
  Future<void> testConnection() async {
    try {
      _log('Testing Supabase connection...');
      final response = await _supabase.from('submissions').select().limit(1);
      _log('Test query successful. Response: $response');
    } catch (e) {
      _log('Error testing Supabase connection: $e');
      throw Exception('Failed to connect to Supabase: $e');
    }
  }

  Future<void> submitVolunteerForm({
    required String fullName,
    required String location,
    required String emailId,
    required int age,
    required String phoneNumber,
    required String whyDoYouWantToBeAVolunteer,
  }) async {
    try {
      // First test the connection
      await testConnection();

      _log('Attempting to save to Supabase...');
      _log(
        'Data being sent: {fullName: $fullName, location: $location, emailId: $emailId, age: $age, phoneNumber: $phoneNumber}',
      );

      final data = {
        'full_name': fullName,
        'location': location,
        'email_id': emailId,
        'age': age,
        'phone_number': phoneNumber,
        'why_do_u_want_to': whyDoYouWantToBeAVolunteer,
      };

      _log('Sending data to Supabase: ${data.toString()}');

      final response =
          await _supabase.from('submissions').insert(data).select();

      _log('Supabase Response: $response');
    } catch (e, stackTrace) {
      _log('Error details: $e');
      _log('Stack trace: $stackTrace');
      throw Exception('Failed to submit volunteer form: $e');
    }
  }
}
