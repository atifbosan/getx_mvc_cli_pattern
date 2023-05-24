class APIEndpoint {
  // static String get baseUrl => "https://6906-206-84-153-218.in.ngrok.io/api/";
  static String get baseUrl => "https://stg-grait-api.azurewebsites.net/api/";
  //
  static String get serverUrl => "https://stg-grait-api.azurewebsites.net";
  //
  // static String get serverUrl => "https://6906-206-84-153-218.in.ngrok.io";
  //static String get mapApiKey => "AIzaSyDx-paubRfvcCrUM1VG0G7Z4WSXTL_tXiw";
  static String get mapApiKey => "AIzaSyBVkjk181_pX68uuHkmQpuXW9phg-PzYnk";
  static String get firebaseKey => "AIzaSyBktltI5tK9pwiS2tmfrp0VOwVu-LpMeJ0";

  static String get negotiateUrl =>
      "https://graitfunction.azurewebsites.net/api/negotiate";
  static String get createDeepLink =>
      "https://firebasedynamiclinks.googleapis.com/v1/shortLinks?key=$firebaseKey";

  static String get dynamicLinkPrefix => "https://foodlemobile.page.link/";
  static String get dynamicLinkPostfix =>
      "apn=com.foodle.app&ibi=com.foodleapp";
  static String get foodleWebsite =>
      "https://apps.apple.com/us/app/foodleappbeta/id1633204030";

  static String get signUpUrl => "Account/UserRegistraion";
  static String get personalInfoUpUrl => "Account/Personal&BuisnessInformation";

  static String get verifyEmailUrl => "Account/VerifyEmail";

  static String get verifyPhoneUrl => "Account/VerifyMobile";

  static String get resendVerifyEmailUrl => "Account/ResendVerificationEmail";

  static String get sendVerifySmsUrl => "Account/SendVerificationSMS";

  static String get forgetPasswordUrl => "Account/ForgetPassword";

  static String get updateForgetPasswordUrl => "Authentication/ResetPassword";

  static String get verifyForgetPasswordOtp =>
      "Account/VerifyOTPForgetPassword";

  static String get loginUrl => "Authentication/login";

  static String get refreshTokenUrl => "Authentication/RefreshToken";

  static String get uploadFileUrl => "File/Upload";

  static String get updateProfileUrl => "Account/UpdateUser";

  static String get checkUserName => "Account/CheckFoodleUserNameExists";

  static String get getUserProfile => "Account/GetUserProfile";

  static String get closeAccount => "Account/CloseAccount";

  static String get getUserById => "Profile/GetUserById";

  static String get getFollowers => "Profile/GetFollowers";

  //---------------
  static String get comment => "Employee/AddEmployeeProgress";
  static String get getCommentsByUserId => "Employee/GetCommentsByUserId";
  static String get getGraiteeById => "Employee/SearchGraiteeById";
  static String get followUnfollow => "Employee/FollowUnfollow";

  static String get followUser => "Profile/FollowUser";
  static String get addUpdateExperience =>
      "Employee/AddorUpdateEmployeeWorkExpereince";
  static String get getExperience => "Employee/GetEmployee_workExperience";
  static String get deleteExperience => "Employee/Delete";
  static String get getAllIndustries => "Employee/GetAllIndustries";

  static String get searchGraitee => "Employee/SearchGraitee";
  static String get specEmployee => "Employee/SelectEmployeeDetails";
  static String get getAllUsers => "Profile/GetAllUsers";
  static String get getBlockedUsers => "Profile/GetBlockedUsers";
  static String get getAllCommentsByType => "Employee/GetCommentsByDate";
  static String get getAllLikeByType => "Employee/GetEmployeeLikesByDate";
  static String get commentIsPublished => "Employee/CommentIsPublished";
  static String get commentIsSeen => "Employee/CommentIsSeen";
  static String get postFeedback => "Feedback/AddFeedback";
  static String get isPublic => "Account/IsPublic";
  static String get ShowMeOnMap => "Account/ShowMeOnMap";
  static String get ToggleGenNotifications =>
      "Notification/ToggleGenNotifications";
  static String get getTotalAmount => "Employee/TotalAmount";
  static String get getTransactionHistory => "DebitAmount/TransactionHistory";
  static String get getDebitAmount => "DebitAmount/DebitAmount";
  static String get getTotalAmountForChart => "Employee/TotalAmountForChart";
  /////////////////////////////////////////////////////////////////////////
  static String get getLikeComment => "Employee/GetAllLikesandCommentsById";
  /////////////////////////////////////////////////////////////////////////
  static String get getAllVideos => "Video/GetUserVideos";
  static String get getVideoById => "Video/GetVideoById";

  static String get getHomePageVideos => "Video/GetHomePageVideos";

  static String get postLikeDislike => "Video/LikeVideo";
  static String get saveVideo => "Video/SaveVideo";

  static String get shareVideo => "Video/ShareVideo";

  static String get postVideo => "Video/AddVideo";

  static String get postComment => "Video/CommentVideo";

  static String get postShare => "Video/ShareVideo";

  static String get getSearchPageVideos => "Video/GetAllVideos";
  static String get getFeaturedBanners => "Video/GetFeaturedBanners";

  static String get getUsersComments => "Video/GetUsersComments";

  static String get getMoreUsersComments => "Video/GetMoreUsersComments";

  static String get commentVideo => "Video/CommentVideo";
  static String get likeComment => "Video/LikeComment";
/////////////////////////////////////////////////////////////
  static String get getRestaurants => "Restaurant/SearchRestaurant";

  static String get getRestaurantById => "Restaurant/GetRestaurantById";

  static String get saveRestaurant => "Restaurant/SaveRestaurant";

  static String get followUnFollowRestaurant => "Restaurant/FollowRestaurant";

  static String get getSavedRestaurants => "Restaurant/GetSavedRestaurant";
  static String get searchGeolocation => "Restaurant/SearchGeolocation";

  static String get getRestaurantVideos =>
      "Restaurant/GetRestaurantProfileVideos";
/////////////////////////////////////////////////////////////

  static String get deleteVideos => "Video/DeleteVideo";

  static String get getPlaylists => "Playlist/GetPlaylists";

  static String get getAllPlaylists => "Playlist/GetAllPlaylists";

  static String get getPlaylistById => "Playlist/GetPlaylistById";

  static String get deletePlaylistById => "Playlist/DeletePlaylistById";

  static String get getPlaylistVideos => "Playlist/GetPlaylistVideos";

  static String get postPlaylist => "Playlist/CreatePlaylist";

  static String get getVideosForPlaylist => "Playlist/GetVideos";
  static String get addVideoToPlaylist => "Playlist/AddVideoToPlaylist";
  static String get sharePlaylist => "Playlist/sharePlaylist";

  static String get getAllPlaylist =>
      "Playlist/GetAllPlaylists"; //for search screen
  static String get savePlaylist => "Playlist/SavePlaylist"; //for search screen
  /////////////////////////////////////////////////////////////
  static String get getCollectionsCount => "Collection/GetCollectionsCount";

  static String get getSavedPlaylistCollection =>
      "Collection/GetSavedPlaylistCollection";

  static String get getSavedRestaurantCollection =>
      "Collection/GetSavedRestaurantCollection";

  static String get getSavedVideoCollection =>
      "Collection/GetSavedVideoCollection";

  static String get getCollectionRestaurantsById =>
      "Collection/GetCollectionRestaurantsById";

  static String get getCollectionPlaylistsById =>
      "Collection/GetCollectionPlaylistsById";

  static String get getCollectionVideosById =>
      "Collection/GetCollectionVideosById";

  static String get createPlaylistCollection =>
      "Collection/CreatePlaylistCollection";

  static String get createVideoCollection => "Collection/CreateVideoCollection";

  static String get createRestaurantCollection =>
      "Collection/CreateRestaurantCollection";

  static String get updateRestaurantCollection =>
      "Collection/UpdateRestaurantCollection";

  static String get updatePlaylistCollection =>
      "Collection/UpdatePlaylistCollection";

  static String get updateVideoCollection => "Collection/UpdateVideoCollection";

  static String get removePlaylistFromCollection =>
      "Collection/RemovePlaylistFromCollection";

  static String get removeRestaurantFromCollection =>
      "Collection/RemoveRestaurantFromCollection";

  static String get removeVideoFromCollection =>
      "Collection/RemoveVideoFromCollection";

  static String get addVideoToCollection => "Collection/AddVideoToCollection";

  static String get addPlaylistToCollection =>
      "Collection/AddPlaylistToCollection";

  static String get addRestaurantToCollection =>
      "Collection/AddRestaurantToCollection";

  static String get movePlaylistToCollection =>
      "Collection/MovePlaylistToCollection";

  static String get moveResturantToCollection =>
      "Collection/MoveResturantToCollection";

  static String get moveVideoToCollection => "Collection/MoveVideoToCollection";

  static String get deletePlaylistCollection =>
      "Collection/DeletePlaylistCollection";

  static String get deleteVideoCollection => "Collection/DeleteVideoCollection";

  static String get deleteRestaurantCollection =>
      "Collection/DeleteRestaurantCollection";
/////////////////////////////////////////////////////////////
  static String get getChatHistory => "Chat/GetChatHistory";

  static String get getMessages => "Chat/GetMessages";

  static String get sendMessage => "Chat/SendMessage";

  static String get reportUser => "Chat/ReportUser";

  static String get blockUser => "Chat/BlockUser";

  static String get deleteConversation => "Chat/DeleteConversation";
/////////////////////////////////////////////////////////////
  /* static String get toggleGeneralNotifications =>
      "Notification/ToogleGeneralNotifications";*/

  static String get toggleEmailNotifications =>
      "Notification/ToogleEmailNotifications";

  static String get getGeneralNotifications =>
      "Notification/GetGeneralNotifications";

  static String get getEmailNotifications =>
      "Notification/GetEmailNotifications";

  static String get toggleChatMuteNotification =>
      "Chat/ToogleChatMuteNotification";

  static String get deleteNotifications => "Notification/DeleteNotifications";

  static String get getChatMuteNotification =>
      "Notification/GetChatMuteNotification";
  static String get getNotifications => "Notification/GetNotifications";
  static String get searchAllExperienceByLatLng =>
      "Map/SearchAllExperienceByLatLng";
  static String get experiencesFeedbacksByLatLng =>
      "Map/ExperiencesFeedbacksByLatLng";
}
