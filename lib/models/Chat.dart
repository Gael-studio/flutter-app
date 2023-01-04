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
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Chat type in your schema. */
@immutable
class Chat extends Model {
  static const classType = const _ChatModelType();
  final String id;
  final String? _recieverId;
  final String? _senderId;
  final TemporalDateTime? _createdOn;
  final TemporalDateTime? _updatedOn;
  final List<ChatItem>? _ChatItems;
  final List<ChatUser>? _chatUsers;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ChatModelIdentifier get modelIdentifier {
      return ChatModelIdentifier(
        id: id
      );
  }
  
  String? get recieverId {
    return _recieverId;
  }
  
  String? get senderId {
    return _senderId;
  }
  
  TemporalDateTime? get createdOn {
    return _createdOn;
  }
  
  TemporalDateTime? get updatedOn {
    return _updatedOn;
  }
  
  List<ChatItem>? get ChatItems {
    return _ChatItems;
  }
  
  List<ChatUser>? get chatUsers {
    return _chatUsers;
  }
  
  const Chat._internal({required this.id, recieverId, senderId, createdOn, updatedOn, ChatItems, chatUsers}): _recieverId = recieverId, _senderId = senderId, _createdOn = createdOn, _updatedOn = updatedOn, _ChatItems = ChatItems, _chatUsers = chatUsers;
  
  factory Chat({String? id, String? recieverId, String? senderId, TemporalDateTime? createdOn, TemporalDateTime? updatedOn, List<ChatItem>? ChatItems, List<ChatUser>? chatUsers}) {
    return Chat._internal(
      id: id == null ? UUID.getUUID() : id,
      recieverId: recieverId,
      senderId: senderId,
      createdOn: createdOn,
      updatedOn: updatedOn,
      ChatItems: ChatItems != null ? List<ChatItem>.unmodifiable(ChatItems) : ChatItems,
      chatUsers: chatUsers != null ? List<ChatUser>.unmodifiable(chatUsers) : chatUsers);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Chat &&
      id == other.id &&
      _recieverId == other._recieverId &&
      _senderId == other._senderId &&
      _createdOn == other._createdOn &&
      _updatedOn == other._updatedOn &&
      DeepCollectionEquality().equals(_ChatItems, other._ChatItems) &&
      DeepCollectionEquality().equals(_chatUsers, other._chatUsers);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Chat {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("recieverId=" + "$_recieverId" + ", ");
    buffer.write("senderId=" + "$_senderId" + ", ");
    buffer.write("createdOn=" + (_createdOn != null ? _createdOn!.format() : "null") + ", ");
    buffer.write("updatedOn=" + (_updatedOn != null ? _updatedOn!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Chat copyWith({String? recieverId, String? senderId, TemporalDateTime? createdOn, TemporalDateTime? updatedOn, List<ChatItem>? ChatItems, List<ChatUser>? chatUsers}) {
    return Chat(
      id: id,
      recieverId: recieverId ?? this.recieverId,
      senderId: senderId ?? this.senderId,
      createdOn: createdOn ?? this.createdOn,
      updatedOn: updatedOn ?? this.updatedOn,
      ChatItems: ChatItems ?? this.ChatItems,
      chatUsers: chatUsers ?? this.chatUsers);
  }
  
  Chat.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _recieverId = json['recieverId'],
      _senderId = json['senderId'],
      _createdOn = json['createdOn'] != null ? TemporalDateTime.fromString(json['createdOn']) : null,
      _updatedOn = json['updatedOn'] != null ? TemporalDateTime.fromString(json['updatedOn']) : null,
      _ChatItems = json['ChatItems'] is List
        ? (json['ChatItems'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ChatItem.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _chatUsers = json['chatUsers'] is List
        ? (json['chatUsers'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ChatUser.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'recieverId': _recieverId, 'senderId': _senderId, 'createdOn': _createdOn?.format(), 'updatedOn': _updatedOn?.format(), 'ChatItems': _ChatItems?.map((ChatItem? e) => e?.toJson()).toList(), 'chatUsers': _chatUsers?.map((ChatUser? e) => e?.toJson()).toList()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'recieverId': _recieverId, 'senderId': _senderId, 'createdOn': _createdOn, 'updatedOn': _updatedOn, 'ChatItems': _ChatItems, 'chatUsers': _chatUsers
  };

  static final QueryModelIdentifier<ChatModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<ChatModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField RECIEVERID = QueryField(fieldName: "recieverId");
  static final QueryField SENDERID = QueryField(fieldName: "senderId");
  static final QueryField CREATEDON = QueryField(fieldName: "createdOn");
  static final QueryField UPDATEDON = QueryField(fieldName: "updatedOn");
  static final QueryField CHATITEMS = QueryField(
    fieldName: "ChatItems",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'ChatItem'));
  static final QueryField CHATUSERS = QueryField(
    fieldName: "chatUsers",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'ChatUser'));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Chat";
    modelSchemaDefinition.pluralName = "Chats";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Chat.RECIEVERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Chat.SENDERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Chat.CREATEDON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Chat.UPDATEDON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Chat.CHATITEMS,
      isRequired: false,
      ofModelName: 'ChatItem',
      associatedKey: ChatItem.CHAT
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Chat.CHATUSERS,
      isRequired: false,
      ofModelName: 'ChatUser',
      associatedKey: ChatUser.CHAT
    ));
  });
}

class _ChatModelType extends ModelType<Chat> {
  const _ChatModelType();
  
  @override
  Chat fromJson(Map<String, dynamic> jsonData) {
    return Chat.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Chat';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Chat] in your schema.
 */
@immutable
class ChatModelIdentifier implements ModelIdentifier<Chat> {
  final String id;

  /** Create an instance of ChatModelIdentifier using [id] the primary key. */
  const ChatModelIdentifier({
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
  String toString() => 'ChatModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ChatModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}