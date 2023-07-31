import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:my_bud/keys.dart';

//Function that tells if user wants to generate an art or answer
//Decides whether to call ChatGPT func or Dalle-E func

class OpenAIService {
  Future<String> isArtPromptAPI(String prompt) async {
    try {
      final res = await http.post(
        Uri.parse('https://api.openai.com/v1/chat/completions'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $openAIAPIKey'
        },
        body: jsonEncode({
          "model": "gpt-3.5-turbo",
          "messages": [
            {
              'role': 'user',
              'content':
                  'Does this message want to generate an AI picture, image, art or anything similar? $prompt. Simply answer with a yes or no',
            }
          ],
        }),
      );
      print(res.body);
      if (res.statusCode == 200) {
        String content =
            jsonDecode(res.body)['choices'][0]['message']['content'];
      }
      return 'AI';
    } catch (e) {
      return e.toString();
    }
  }
}
