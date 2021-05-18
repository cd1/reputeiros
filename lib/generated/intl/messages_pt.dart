// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pt locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'pt';

  static String m0(level) => "Nível de aprovação: ${level}";

  static String m1(party) => "Partido: ${party}";

  static String m2(count) => "Comentários (${count})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "candidateApprovalLevelInfo": m0,
        "candidatePartyInfo": m1,
        "candidatesGridTitle":
            MessageLookupByLibrary.simpleMessage("Candidatos à presidência"),
        "commentsButtonText": m2,
        "dislikeButtonTooltip":
            MessageLookupByLibrary.simpleMessage("Descurtir"),
        "likeButtonTooltip": MessageLookupByLibrary.simpleMessage("Curtir"),
        "noApprovalLevelValue": MessageLookupByLibrary.simpleMessage("-"),
        "noCandidateNewsMessage": MessageLookupByLibrary.simpleMessage(
            "Não existem notícias sobre esse candidato."),
        "openNewsUrlError": MessageLookupByLibrary.simpleMessage(
            "Não foi possível abrir o link da notícia."),
        "reportFakeTooltip":
            MessageLookupByLibrary.simpleMessage("Reportar fake"),
        "title": MessageLookupByLibrary.simpleMessage("Reputeiros")
      };
}
