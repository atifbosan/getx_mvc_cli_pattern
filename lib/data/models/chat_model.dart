/*class Chat {
  String? id;
  String? modifiedBy;
  String? fromUser;
  String? text;
  bool? isUser;
  String? createdAt;
  String? formatedMessageData;
  int? headId;
  bool? isCurrentUserMessage;
  Chat({
    this.id,
    this.modifiedBy,
    this.fromUser,
    this.text,
    this.isUser,
    this.createdAt,
    this.formatedMessageData,
    this.headId,
    this.isCurrentUserMessage,
  });
}*/

class Chats {
  String? id;
  String? photo;
  String? fullName;
  String? text;
  String? createdAt;
  String? toUserId;
  String? fromUserId;
  String? userName;
  var totalUnseen;
  bool? isOpen;
  bool? isBlocked;
  bool? isMuted;
  bool? isCurrentUserMessage;
  int? conversationId;

  Chats(
      {this.id,
      this.photo,
      this.isBlocked,
      this.isMuted,
      this.fullName,
      this.toUserId,
      this.fromUserId,
      this.text,
      this.userName,
      this.createdAt,
      this.totalUnseen,
      this.conversationId,
      this.isCurrentUserMessage,
      this.isOpen});

  Chats.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isBlocked = json['isBlocked'];
    conversationId = json['conversationId'];
    isMuted = json['isMuted'];
    photo = json['photo'];
    totalUnseen = json['totalUnseen'];
    fullName = json['fullName'];
    userName = json['userName'];

    text = json['text'];
    createdAt = json['createdAt'];
    fromUserId = json['fromUserId'];
    toUserId = json['toUserId'];
    isOpen = json['isOpen'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['isBlocked'] = this.isBlocked;
    data['conversationId'] = this.conversationId;
    data['isMuted'] = this.isMuted;
    data['photo'] = this.photo;
    data['totalUnseen'] = this.totalUnseen;
    data['toUserId'] = this.toUserId;
    data['fromUserId'] = this.fromUserId;
    data['fullName'] = this.fullName;
    data['userName'] = this.userName;

    data['text'] = this.text;
    data['createdAt'] = this.createdAt;
    data['isOpen'] = this.isOpen;
    return data;
  }
}
