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


/** This is an auto generated class representing the Post type in your schema. */
@immutable
class Post extends Model {
  static const classType = const _PostModelType();
  final String id;
  final String? _Content;
  final String? _postImageUrl;
  final PostStatus? _status;
  final TemporalDateTime? _CreatedO;
  final TemporalDateTime? _UpdatedOn;
  final PostType? _type;
  final User? _User;
  final List<Comment>? _Comments;
  final String? _userID;
  final String? _postUserId;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  PostModelIdentifier get modelIdentifier {
      return PostModelIdentifier(
        id: id
      );
  }
  
  String? get Content {
    return _Content;
  }
  
  String? get postImageUrl {
    return _postImageUrl;
  }
  
  PostStatus? get status {
    return _status;
  }
  
  TemporalDateTime? get CreatedO {
    return _CreatedO;
  }
  
  TemporalDateTime? get UpdatedOn {
    return _UpdatedOn;
  }
  
  PostType? get type {
    return _type;
  }
  
  User? get User {
    return _User;
  }
  
  List<Comment>? get Comments {
    return _Comments;
  }
  
  String get userID {
    try {
      return _userID!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get postUserId {
    return _postUserId;
  }
  
  const Post._internal({required this.id, Content, postImageUrl, status, CreatedO, UpdatedOn, type, User, Comments, required userID, postUserId}): _Content = Content, _postImageUrl = postImageUrl, _status = status, _CreatedO = CreatedO, _UpdatedOn = UpdatedOn, _type = type, _User = User, _Comments = Comments, _userID = userID, _postUserId = postUserId;
  
  factory Post({String? id, String? Content, String? postImageUrl, PostStatus? status, TemporalDateTime? CreatedO, TemporalDateTime? UpdatedOn, PostType? type, User? User, List<Comment>? Comments, required String userID, String? postUserId}) {
    return Post._internal(
      id: id == null ? UUID.getUUID() : id,
      Content: Content,
      postImageUrl: postImageUrl,
      status: status,
      CreatedO: CreatedO,
      UpdatedOn: UpdatedOn,
      type: type,
      User: User,
      Comments: Comments != null ? List<Comment>.unmodifiable(Comments) : Comments,
      userID: userID,
      postUserId: postUserId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Post &&
      id == other.id &&
      _Content == other._Content &&
      _postImageUrl == other._postImageUrl &&
      _status == other._status &&
      _CreatedO == other._CreatedO &&
      _UpdatedOn == other._UpdatedOn &&
      _type == other._type &&
      _User == other._User &&
      DeepCollectionEquality().equals(_Comments, other._Comments) &&
      _userID == other._userID &&
      _postUserId == other._postUserId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Post {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("Content=" + "$_Content" + ", ");
    buffer.write("postImageUrl=" + "$_postImageUrl" + ", ");
    buffer.write("status=" + (_status != null ? enumToString(_status)! : "null") + ", ");
    buffer.write("CreatedO=" + (_CreatedO != null ? _CreatedO!.format() : "null") + ", ");
    buffer.write("UpdatedOn=" + (_UpdatedOn != null ? _UpdatedOn!.format() : "null") + ", ");
    buffer.write("type=" + (_type != null ? enumToString(_type)! : "null") + ", ");
    buffer.write("userID=" + "$_userID" + ", ");
    buffer.write("postUserId=" + "$_postUserId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Post copyWith({String? Content, String? postImageUrl, PostStatus? status, TemporalDateTime? CreatedO, TemporalDateTime? UpdatedOn, PostType? type, User? User, List<Comment>? Comments, String? userID, String? postUserId}) {
    return Post(
      id: id,
      Content: Content ?? this.Content,
      postImageUrl: postImageUrl ?? this.postImageUrl,
      status: status ?? this.status,
      CreatedO: CreatedO ?? this.CreatedO,
      UpdatedOn: UpdatedOn ?? this.UpdatedOn,
      type: type ?? this.type,
      User: User ?? this.User,
      Comments: Comments ?? this.Comments,
      userID: userID ?? this.userID,
      postUserId: postUserId ?? this.postUserId);
  }
  
  Post.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _Content = json['Content'],
      _postImageUrl = json['postImageUrl'],
      _status = enumFromString<PostStatus>(json['status'], PostStatus.values),
      _CreatedO = json['CreatedO'] != null ? TemporalDateTime.fromString(json['CreatedO']) : null,
      _UpdatedOn = json['UpdatedOn'] != null ? TemporalDateTime.fromString(json['UpdatedOn']) : null,
      _type = enumFromString<PostType>(json['type'], PostType.values),
      _User = json['User']?['serializedData'] != null
        ? User.fromJson(new Map<String, dynamic>.from(json['User']['serializedData']))
        : null,
      _Comments = json['Comments'] is List
        ? (json['Comments'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Comment.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _userID = json['userID'],
      _postUserId = json['postUserId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'Content': _Content, 'postImageUrl': _postImageUrl, 'status': enumToString(_status), 'CreatedO': _CreatedO?.format(), 'UpdatedOn': _UpdatedOn?.format(), 'type': enumToString(_type), 'User': _User?.toJson(), 'Comments': _Comments?.map((Comment? e) => e?.toJson()).toList(), 'userID': _userID, 'postUserId': _postUserId
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'Content': _Content, 'postImageUrl': _postImageUrl, 'status': _status, 'CreatedO': _CreatedO, 'UpdatedOn': _UpdatedOn, 'type': _type, 'User': _User, 'Comments': _Comments, 'userID': _userID, 'postUserId': _postUserId
  };

  static final QueryModelIdentifier<PostModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<PostModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField CONTENT = QueryField(fieldName: "Content");
  static final QueryField POSTIMAGEURL = QueryField(fieldName: "postImageUrl");
  static final QueryField STATUS = QueryField(fieldName: "status");
  static final QueryField CREATEDO = QueryField(fieldName: "CreatedO");
  static final QueryField UPDATEDON = QueryField(fieldName: "UpdatedOn");
  static final QueryField TYPE = QueryField(fieldName: "type");
  static final QueryField USER = QueryField(
    fieldName: "User",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'User'));
  static final QueryField COMMENTS = QueryField(
    fieldName: "Comments",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Comment'));
  static final QueryField USERID = QueryField(fieldName: "userID");
  static final QueryField POSTUSERID = QueryField(fieldName: "postUserId");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Post";
    modelSchemaDefinition.pluralName = "Posts";
    
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
      ModelIndex(fields: const ["userID"], name: "byUser")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Post.CONTENT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Post.POSTIMAGEURL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Post.STATUS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Post.CREATEDO,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Post.UPDATEDON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Post.TYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: Post.USER,
      isRequired: false,
      ofModelName: 'User',
      associatedKey: User.ID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Post.COMMENTS,
      isRequired: false,
      ofModelName: 'Comment',
      associatedKey: Comment.POSTID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Post.USERID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Post.POSTUSERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _PostModelType extends ModelType<Post> {
  const _PostModelType();
  
  @override
  Post fromJson(Map<String, dynamic> jsonData) {
    return Post.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Post';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Post] in your schema.
 */
@immutable
class PostModelIdentifier implements ModelIdentifier<Post> {
  final String id;

  /** Create an instance of PostModelIdentifier using [id] the primary key. */
  const PostModelIdentifier({
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
  String toString() => 'PostModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is PostModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}