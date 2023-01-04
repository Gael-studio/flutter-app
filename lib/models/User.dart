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


/** This is an auto generated class representing the User type in your schema. */
@immutable
class User extends Model {
  static const classType = const _UserModelType();
  final String id;
  final String? _username;
  final String? _firstname;
  final String? _lastname;
  final bool? _isVerified;
  final String? _profilePic;
  final String? _email;
  final TemporalDateTime? _createdOn;
  final TemporalDateTime? _updatedOn;
  final List<ChatUser>? _chats;
  final List<Post>? _Posts;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  UserModelIdentifier get modelIdentifier {
      return UserModelIdentifier(
        id: id
      );
  }
  
  String? get username {
    return _username;
  }
  
  String? get firstname {
    return _firstname;
  }
  
  String? get lastname {
    return _lastname;
  }
  
  bool? get isVerified {
    return _isVerified;
  }
  
  String? get profilePic {
    return _profilePic;
  }
  
  String? get email {
    return _email;
  }
  
  TemporalDateTime? get createdOn {
    return _createdOn;
  }
  
  TemporalDateTime? get updatedOn {
    return _updatedOn;
  }
  
  List<ChatUser>? get chats {
    return _chats;
  }
  
  List<Post>? get Posts {
    return _Posts;
  }
  
  const User._internal({required this.id, username, firstname, lastname, isVerified, profilePic, email, createdOn, updatedOn, chats, Posts}): _username = username, _firstname = firstname, _lastname = lastname, _isVerified = isVerified, _profilePic = profilePic, _email = email, _createdOn = createdOn, _updatedOn = updatedOn, _chats = chats, _Posts = Posts;
  
  factory User({String? id, String? username, String? firstname, String? lastname, bool? isVerified, String? profilePic, String? email, TemporalDateTime? createdOn, TemporalDateTime? updatedOn, List<ChatUser>? chats, List<Post>? Posts}) {
    return User._internal(
      id: id == null ? UUID.getUUID() : id,
      username: username,
      firstname: firstname,
      lastname: lastname,
      isVerified: isVerified,
      profilePic: profilePic,
      email: email,
      createdOn: createdOn,
      updatedOn: updatedOn,
      chats: chats != null ? List<ChatUser>.unmodifiable(chats) : chats,
      Posts: Posts != null ? List<Post>.unmodifiable(Posts) : Posts);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
      id == other.id &&
      _username == other._username &&
      _firstname == other._firstname &&
      _lastname == other._lastname &&
      _isVerified == other._isVerified &&
      _profilePic == other._profilePic &&
      _email == other._email &&
      _createdOn == other._createdOn &&
      _updatedOn == other._updatedOn &&
      DeepCollectionEquality().equals(_chats, other._chats) &&
      DeepCollectionEquality().equals(_Posts, other._Posts);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("User {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("username=" + "$_username" + ", ");
    buffer.write("firstname=" + "$_firstname" + ", ");
    buffer.write("lastname=" + "$_lastname" + ", ");
    buffer.write("isVerified=" + (_isVerified != null ? _isVerified!.toString() : "null") + ", ");
    buffer.write("profilePic=" + "$_profilePic" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("createdOn=" + (_createdOn != null ? _createdOn!.format() : "null") + ", ");
    buffer.write("updatedOn=" + (_updatedOn != null ? _updatedOn!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  User copyWith({String? username, String? firstname, String? lastname, bool? isVerified, String? profilePic, String? email, TemporalDateTime? createdOn, TemporalDateTime? updatedOn, List<ChatUser>? chats, List<Post>? Posts}) {
    return User(
      id: id,
      username: username ?? this.username,
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      isVerified: isVerified ?? this.isVerified,
      profilePic: profilePic ?? this.profilePic,
      email: email ?? this.email,
      createdOn: createdOn ?? this.createdOn,
      updatedOn: updatedOn ?? this.updatedOn,
      chats: chats ?? this.chats,
      Posts: Posts ?? this.Posts);
  }
  
  User.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _username = json['username'],
      _firstname = json['firstname'],
      _lastname = json['lastname'],
      _isVerified = json['isVerified'],
      _profilePic = json['profilePic'],
      _email = json['email'],
      _createdOn = json['createdOn'] != null ? TemporalDateTime.fromString(json['createdOn']) : null,
      _updatedOn = json['updatedOn'] != null ? TemporalDateTime.fromString(json['updatedOn']) : null,
      _chats = json['chats'] is List
        ? (json['chats'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ChatUser.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _Posts = json['Posts'] is List
        ? (json['Posts'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Post.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'username': _username, 'firstname': _firstname, 'lastname': _lastname, 'isVerified': _isVerified, 'profilePic': _profilePic, 'email': _email, 'createdOn': _createdOn?.format(), 'updatedOn': _updatedOn?.format(), 'chats': _chats?.map((ChatUser? e) => e?.toJson()).toList(), 'Posts': _Posts?.map((Post? e) => e?.toJson()).toList()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'username': _username, 'firstname': _firstname, 'lastname': _lastname, 'isVerified': _isVerified, 'profilePic': _profilePic, 'email': _email, 'createdOn': _createdOn, 'updatedOn': _updatedOn, 'chats': _chats, 'Posts': _Posts
  };

  static final QueryModelIdentifier<UserModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<UserModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField USERNAME = QueryField(fieldName: "username");
  static final QueryField FIRSTNAME = QueryField(fieldName: "firstname");
  static final QueryField LASTNAME = QueryField(fieldName: "lastname");
  static final QueryField ISVERIFIED = QueryField(fieldName: "isVerified");
  static final QueryField PROFILEPIC = QueryField(fieldName: "profilePic");
  static final QueryField EMAIL = QueryField(fieldName: "email");
  static final QueryField CREATEDON = QueryField(fieldName: "createdOn");
  static final QueryField UPDATEDON = QueryField(fieldName: "updatedOn");
  static final QueryField CHATS = QueryField(
    fieldName: "chats",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'ChatUser'));
  static final QueryField POSTS = QueryField(
    fieldName: "Posts",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Post'));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "User";
    modelSchemaDefinition.pluralName = "Users";
    
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
      key: User.USERNAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: User.FIRSTNAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: User.LASTNAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: User.ISVERIFIED,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: User.PROFILEPIC,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: User.EMAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: User.CREATEDON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: User.UPDATEDON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: User.CHATS,
      isRequired: false,
      ofModelName: 'ChatUser',
      associatedKey: ChatUser.USER
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: User.POSTS,
      isRequired: false,
      ofModelName: 'Post',
      associatedKey: Post.USERID
    ));
  });
}

class _UserModelType extends ModelType<User> {
  const _UserModelType();
  
  @override
  User fromJson(Map<String, dynamic> jsonData) {
    return User.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'User';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [User] in your schema.
 */
@immutable
class UserModelIdentifier implements ModelIdentifier<User> {
  final String id;

  /** Create an instance of UserModelIdentifier using [id] the primary key. */
  const UserModelIdentifier({
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
  String toString() => 'UserModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is UserModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}