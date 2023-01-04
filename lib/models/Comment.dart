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


/** This is an auto generated class representing the Comment type in your schema. */
@immutable
class Comment extends Model {
  static const classType = const _CommentModelType();
  final String id;
  final TemporalDateTime? _createdOn;
  final TemporalDateTime? _updatedOn;
  final String? _userId;
  final String? _commentTest;
  final Post? _Post;
  final String? _postID;
  final String? _commentPostId;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  CommentModelIdentifier get modelIdentifier {
      return CommentModelIdentifier(
        id: id
      );
  }
  
  TemporalDateTime? get createdOn {
    return _createdOn;
  }
  
  TemporalDateTime? get updatedOn {
    return _updatedOn;
  }
  
  String? get userId {
    return _userId;
  }
  
  String? get commentTest {
    return _commentTest;
  }
  
  Post? get Post {
    return _Post;
  }
  
  String get postID {
    try {
      return _postID!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get commentPostId {
    return _commentPostId;
  }
  
  const Comment._internal({required this.id, createdOn, updatedOn, userId, commentTest, Post, required postID, commentPostId}): _createdOn = createdOn, _updatedOn = updatedOn, _userId = userId, _commentTest = commentTest, _Post = Post, _postID = postID, _commentPostId = commentPostId;
  
  factory Comment({String? id, TemporalDateTime? createdOn, TemporalDateTime? updatedOn, String? userId, String? commentTest, Post? Post, required String postID, String? commentPostId}) {
    return Comment._internal(
      id: id == null ? UUID.getUUID() : id,
      createdOn: createdOn,
      updatedOn: updatedOn,
      userId: userId,
      commentTest: commentTest,
      Post: Post,
      postID: postID,
      commentPostId: commentPostId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Comment &&
      id == other.id &&
      _createdOn == other._createdOn &&
      _updatedOn == other._updatedOn &&
      _userId == other._userId &&
      _commentTest == other._commentTest &&
      _Post == other._Post &&
      _postID == other._postID &&
      _commentPostId == other._commentPostId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Comment {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("createdOn=" + (_createdOn != null ? _createdOn!.format() : "null") + ", ");
    buffer.write("updatedOn=" + (_updatedOn != null ? _updatedOn!.format() : "null") + ", ");
    buffer.write("userId=" + "$_userId" + ", ");
    buffer.write("commentTest=" + "$_commentTest" + ", ");
    buffer.write("postID=" + "$_postID" + ", ");
    buffer.write("commentPostId=" + "$_commentPostId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Comment copyWith({TemporalDateTime? createdOn, TemporalDateTime? updatedOn, String? userId, String? commentTest, Post? Post, String? postID, String? commentPostId}) {
    return Comment(
      id: id,
      createdOn: createdOn ?? this.createdOn,
      updatedOn: updatedOn ?? this.updatedOn,
      userId: userId ?? this.userId,
      commentTest: commentTest ?? this.commentTest,
      Post: Post ?? this.Post,
      postID: postID ?? this.postID,
      commentPostId: commentPostId ?? this.commentPostId);
  }
  
  Comment.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _createdOn = json['createdOn'] != null ? TemporalDateTime.fromString(json['createdOn']) : null,
      _updatedOn = json['updatedOn'] != null ? TemporalDateTime.fromString(json['updatedOn']) : null,
      _userId = json['userId'],
      _commentTest = json['commentTest'],
      _Post = json['Post']?['serializedData'] != null
        ? Post.fromJson(new Map<String, dynamic>.from(json['Post']['serializedData']))
        : null,
      _postID = json['postID'],
      _commentPostId = json['commentPostId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'createdOn': _createdOn?.format(), 'updatedOn': _updatedOn?.format(), 'userId': _userId, 'commentTest': _commentTest, 'Post': _Post?.toJson(), 'postID': _postID, 'commentPostId': _commentPostId
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'createdOn': _createdOn, 'updatedOn': _updatedOn, 'userId': _userId, 'commentTest': _commentTest, 'Post': _Post, 'postID': _postID, 'commentPostId': _commentPostId
  };

  static final QueryModelIdentifier<CommentModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<CommentModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField CREATEDON = QueryField(fieldName: "createdOn");
  static final QueryField UPDATEDON = QueryField(fieldName: "updatedOn");
  static final QueryField USERID = QueryField(fieldName: "userId");
  static final QueryField COMMENTTEST = QueryField(fieldName: "commentTest");
  static final QueryField POST = QueryField(
    fieldName: "Post",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Post'));
  static final QueryField POSTID = QueryField(fieldName: "postID");
  static final QueryField COMMENTPOSTID = QueryField(fieldName: "commentPostId");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Comment";
    modelSchemaDefinition.pluralName = "Comments";
    
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
      ModelIndex(fields: const ["postID"], name: "byPost")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Comment.CREATEDON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Comment.UPDATEDON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Comment.USERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Comment.COMMENTTEST,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: Comment.POST,
      isRequired: false,
      ofModelName: 'Post',
      associatedKey: Post.ID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Comment.POSTID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Comment.COMMENTPOSTID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _CommentModelType extends ModelType<Comment> {
  const _CommentModelType();
  
  @override
  Comment fromJson(Map<String, dynamic> jsonData) {
    return Comment.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Comment';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Comment] in your schema.
 */
@immutable
class CommentModelIdentifier implements ModelIdentifier<Comment> {
  final String id;

  /** Create an instance of CommentModelIdentifier using [id] the primary key. */
  const CommentModelIdentifier({
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
  String toString() => 'CommentModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is CommentModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}