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


/** This is an auto generated class representing the ChatItem type in your schema. */
@immutable
class ChatItem extends Model {
  static const classType = const _ChatItemModelType();
  final String id;
  final String? _senderId;
  final String? _recieverId;
  final String? _massage;
  final String? _imagUrl;
  final ChatItemType? _itemType;
  final TemporalDateTime? _createdOn;
  final Chat? _Chat;
  final Chat? _Chats;
  final String? _chatItemChatsId;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ChatItemModelIdentifier get modelIdentifier {
      return ChatItemModelIdentifier(
        id: id
      );
  }
  
  String? get senderId {
    return _senderId;
  }
  
  String? get recieverId {
    return _recieverId;
  }
  
  String? get massage {
    return _massage;
  }
  
  String? get imagUrl {
    return _imagUrl;
  }
  
  ChatItemType? get itemType {
    return _itemType;
  }
  
  TemporalDateTime? get createdOn {
    return _createdOn;
  }
  
  Chat? get Chat {
    return _Chat;
  }
  
  Chat? get Chats {
    return _Chats;
  }
  
  String? get chatItemChatsId {
    return _chatItemChatsId;
  }
  
  const ChatItem._internal({required this.id, senderId, recieverId, massage, imagUrl, itemType, createdOn, Chat, Chats, chatItemChatsId}): _senderId = senderId, _recieverId = recieverId, _massage = massage, _imagUrl = imagUrl, _itemType = itemType, _createdOn = createdOn, _Chat = Chat, _Chats = Chats, _chatItemChatsId = chatItemChatsId;
  
  factory ChatItem({String? id, String? senderId, String? recieverId, String? massage, String? imagUrl, ChatItemType? itemType, TemporalDateTime? createdOn, Chat? Chat, Chat? Chats, String? chatItemChatsId}) {
    return ChatItem._internal(
      id: id == null ? UUID.getUUID() : id,
      senderId: senderId,
      recieverId: recieverId,
      massage: massage,
      imagUrl: imagUrl,
      itemType: itemType,
      createdOn: createdOn,
      Chat: Chat,
      Chats: Chats,
      chatItemChatsId: chatItemChatsId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatItem &&
      id == other.id &&
      _senderId == other._senderId &&
      _recieverId == other._recieverId &&
      _massage == other._massage &&
      _imagUrl == other._imagUrl &&
      _itemType == other._itemType &&
      _createdOn == other._createdOn &&
      _Chat == other._Chat &&
      _Chats == other._Chats &&
      _chatItemChatsId == other._chatItemChatsId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ChatItem {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("senderId=" + "$_senderId" + ", ");
    buffer.write("recieverId=" + "$_recieverId" + ", ");
    buffer.write("massage=" + "$_massage" + ", ");
    buffer.write("imagUrl=" + "$_imagUrl" + ", ");
    buffer.write("itemType=" + (_itemType != null ? enumToString(_itemType)! : "null") + ", ");
    buffer.write("createdOn=" + (_createdOn != null ? _createdOn!.format() : "null") + ", ");
    buffer.write("Chat=" + (_Chat != null ? _Chat!.toString() : "null") + ", ");
    buffer.write("chatItemChatsId=" + "$_chatItemChatsId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ChatItem copyWith({String? senderId, String? recieverId, String? massage, String? imagUrl, ChatItemType? itemType, TemporalDateTime? createdOn, Chat? Chat, Chat? Chats, String? chatItemChatsId}) {
    return ChatItem(
      id: id,
      senderId: senderId ?? this.senderId,
      recieverId: recieverId ?? this.recieverId,
      massage: massage ?? this.massage,
      imagUrl: imagUrl ?? this.imagUrl,
      itemType: itemType ?? this.itemType,
      createdOn: createdOn ?? this.createdOn,
      Chat: Chat ?? this.Chat,
      Chats: Chats ?? this.Chats,
      chatItemChatsId: chatItemChatsId ?? this.chatItemChatsId);
  }
  
  ChatItem.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _senderId = json['senderId'],
      _recieverId = json['recieverId'],
      _massage = json['massage'],
      _imagUrl = json['imagUrl'],
      _itemType = enumFromString<ChatItemType>(json['itemType'], ChatItemType.values),
      _createdOn = json['createdOn'] != null ? TemporalDateTime.fromString(json['createdOn']) : null,
      _Chat = json['Chat']?['serializedData'] != null
        ? Chat.fromJson(new Map<String, dynamic>.from(json['Chat']['serializedData']))
        : null,
      _Chats = json['Chats']?['serializedData'] != null
        ? Chat.fromJson(new Map<String, dynamic>.from(json['Chats']['serializedData']))
        : null,
      _chatItemChatsId = json['chatItemChatsId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'senderId': _senderId, 'recieverId': _recieverId, 'massage': _massage, 'imagUrl': _imagUrl, 'itemType': enumToString(_itemType), 'createdOn': _createdOn?.format(), 'Chat': _Chat?.toJson(), 'Chats': _Chats?.toJson(), 'chatItemChatsId': _chatItemChatsId
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'senderId': _senderId, 'recieverId': _recieverId, 'massage': _massage, 'imagUrl': _imagUrl, 'itemType': _itemType, 'createdOn': _createdOn, 'Chat': _Chat, 'Chats': _Chats, 'chatItemChatsId': _chatItemChatsId
  };

  static final QueryModelIdentifier<ChatItemModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<ChatItemModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField SENDERID = QueryField(fieldName: "senderId");
  static final QueryField RECIEVERID = QueryField(fieldName: "recieverId");
  static final QueryField MASSAGE = QueryField(fieldName: "massage");
  static final QueryField IMAGURL = QueryField(fieldName: "imagUrl");
  static final QueryField ITEMTYPE = QueryField(fieldName: "itemType");
  static final QueryField CREATEDON = QueryField(fieldName: "createdOn");
  static final QueryField CHAT = QueryField(
    fieldName: "Chat",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Chat'));
  static final QueryField CHATS = QueryField(
    fieldName: "Chats",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Chat'));
  static final QueryField CHATITEMCHATSID = QueryField(fieldName: "chatItemChatsId");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ChatItem";
    modelSchemaDefinition.pluralName = "ChatItems";
    
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
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["chatID"], name: "byChat")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ChatItem.SENDERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ChatItem.RECIEVERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ChatItem.MASSAGE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ChatItem.IMAGURL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ChatItem.ITEMTYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ChatItem.CREATEDON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: ChatItem.CHAT,
      isRequired: false,
      targetNames: ['chatID'],
      ofModelName: 'Chat'
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: ChatItem.CHATS,
      isRequired: false,
      ofModelName: 'Chat',
      associatedKey: Chat.ID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ChatItem.CHATITEMCHATSID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _ChatItemModelType extends ModelType<ChatItem> {
  const _ChatItemModelType();
  
  @override
  ChatItem fromJson(Map<String, dynamic> jsonData) {
    return ChatItem.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'ChatItem';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [ChatItem] in your schema.
 */
@immutable
class ChatItemModelIdentifier implements ModelIdentifier<ChatItem> {
  final String id;

  /** Create an instance of ChatItemModelIdentifier using [id] the primary key. */
  const ChatItemModelIdentifier({
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
  String toString() => 'ChatItemModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ChatItemModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}