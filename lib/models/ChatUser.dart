/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the ChatUser type in your schema. */
@immutable
class ChatUser extends Model {
  static const classType = const _ChatUserModelType();
  final String id;
  final Chat? _chat;
  final User? _user;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ChatUserModelIdentifier get modelIdentifier {
      return ChatUserModelIdentifier(
        id: id
      );
  }
  
  Chat get chat {
    try {
      return _chat!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  User get user {
    try {
      return _user!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const ChatUser._internal({required this.id, required chat, required user}): _chat = chat, _user = user;
  
  factory ChatUser({String? id, required Chat chat, required User user}) {
    return ChatUser._internal(
      id: id == null ? UUID.getUUID() : id,
      chat: chat,
      user: user);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatUser &&
      id == other.id &&
      _chat == other._chat &&
      _user == other._user;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ChatUser {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("chat=" + (_chat != null ? _chat!.toString() : "null") + ", ");
    buffer.write("user=" + (_user != null ? _user!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ChatUser copyWith({Chat? chat, User? user}) {
    return ChatUser(
      id: id,
      chat: chat ?? this.chat,
      user: user ?? this.user);
  }
  
  ChatUser.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _chat = json['chat']?['serializedData'] != null
        ? Chat.fromJson(new Map<String, dynamic>.from(json['chat']['serializedData']))
        : null,
      _user = json['user']?['serializedData'] != null
        ? User.fromJson(new Map<String, dynamic>.from(json['user']['serializedData']))
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'chat': _chat?.toJson(), 'user': _user?.toJson()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'chat': _chat, 'user': _user
  };

  static final QueryModelIdentifier<ChatUserModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<ChatUserModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField CHAT = QueryField(
    fieldName: "chat",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Chat'));
  static final QueryField USER = QueryField(
    fieldName: "user",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'User'));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ChatUser";
    modelSchemaDefinition.pluralName = "ChatUsers";
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["chatId"], name: "byChat"),
      ModelIndex(fields: const ["userId"], name: "byUser")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: ChatUser.CHAT,
      isRequired: true,
      targetNames: ['chatId'],
      ofModelName: 'Chat'
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: ChatUser.USER,
      isRequired: true,
      targetNames: ['userId'],
      ofModelName: 'User'
    ));
  });
}

class _ChatUserModelType extends ModelType<ChatUser> {
  const _ChatUserModelType();
  
  @override
  ChatUser fromJson(Map<String, dynamic> jsonData) {
    return ChatUser.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'ChatUser';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [ChatUser] in your schema.
 */
@immutable
class ChatUserModelIdentifier implements ModelIdentifier<ChatUser> {
  final String id;

  /** Create an instance of ChatUserModelIdentifier using [id] the primary key. */
  const ChatUserModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'ChatUserModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ChatUserModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}