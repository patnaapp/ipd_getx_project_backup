class Captcha_model {
  String captchaImage = "";
  int id = 0 ;
  String captchaId = "";

  Captcha_model({required this.captchaImage, required this.id, required this.captchaId});

  Captcha_model.fromJson(Map<String, dynamic> json) {
    captchaImage = json['captchaImage'];
    id = json['id'];
    captchaId = json['captchaId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['captchaImage'] = this.captchaImage;
    data['id'] = this.id;
    data['captchaId'] = this.captchaId;
    return data;
  }
}


class Authenticate_user {
  String? captchaId;
  String? captchaValue;
  int? id;
  String? password;
  String? userId;

  Authenticate_user(
      {this.captchaId, this.captchaValue, this.id, this.password, this.userId});

  Authenticate_user.fromJson(Map<String, dynamic> json) {
    captchaId = json['captcha_id'];
    captchaValue = json['captcha_value'];
    id = json['id'];
    password = json['password'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['captcha_id'] = this.captchaId;
    data['captcha_value'] = this.captchaValue;
    data['id'] = this.id;
    data['password'] = this.password;
    data['user_id'] = this.userId;
    return data;
  }
}


class DefaultResponse {
  String? version;
  String? timestamp;
  String? code;
  String? message;
  dynamic response;//


  DefaultResponse({this.version, this.timestamp, this.code, this.message});

  DefaultResponse.fromJson(Map<String, dynamic> json) {
    version = json['version'];
    timestamp = json['timestamp'];
    code = json['code'];
    message = json['message'];
    response = json['result'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['version'] = this.version;
    data['timestamp'] = this.timestamp;
    data['code'] = this.code;
    data['message'] = this.message;
    return data;
  }
}

class UserDetail {
  String? accessToken;
  String? tokenType;
  int? expiresIn;
  List<ProjectsList>? projectsList;
  String? fName;
  String? lName;
  Null? genderCode;
  Null? isPractitioner;
  String? mName;
  String? mobileNo;
  String? email;
  int? healthFacilityId;
  int? userType;
  int? firstLoginFlag;
  int? departmentId;

  UserDetail(
      {this.accessToken,
        this.tokenType,
        this.expiresIn,
        this.projectsList,
        this.fName,
        this.lName,
        this.genderCode,
        this.isPractitioner,
        this.mName,
        this.mobileNo,
        this.email,
        this.healthFacilityId,
        this.userType,
        this.firstLoginFlag,
        this.departmentId});

  UserDetail.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    expiresIn = json['expires_in'];
    if (json['projects_list'] != null) {
      projectsList = <ProjectsList>[];
      json['projects_list'].forEach((v) {
        projectsList!.add(new ProjectsList.fromJson(v));
      });
    }
    fName = json['f_name'];
    lName = json['l_name'];
    genderCode = json['gender_code'];
    isPractitioner = json['is_practitioner'];
    mName = json['m_name'];
    mobileNo = json['mobile_no'];
    email = json['email'];
    healthFacilityId = json['health_facility_id'];
    userType = json['user_type'];
    firstLoginFlag = json['first_login_flag'];
    departmentId = json['departmentId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_token'] = this.accessToken;
    data['token_type'] = this.tokenType;
    data['expires_in'] = this.expiresIn;
    if (this.projectsList != null) {
      data['projects_list'] =
          this.projectsList!.map((v) => v.toJson()).toList();
    }
    data['f_name'] = this.fName;
    data['l_name'] = this.lName;
    data['gender_code'] = this.genderCode;
    data['is_practitioner'] = this.isPractitioner;
    data['m_name'] = this.mName;
    data['mobile_no'] = this.mobileNo;
    data['email'] = this.email;
    data['health_facility_id'] = this.healthFacilityId;
    data['user_type'] = this.userType;
    data['first_login_flag'] = this.firstLoginFlag;
    data['departmentId'] = this.departmentId;
    return data;
  }
}

class ProjectsList {
  int? projectId;
  String? projectTitle;
  String? projectDesc;
  String? projectImgName;
  String? projectRedirectUrl;
  int? activeStatus;
  int? isConfig;

  ProjectsList(
      {this.projectId,
        this.projectTitle,
        this.projectDesc,
        this.projectImgName,
        this.projectRedirectUrl,
        this.activeStatus,
        this.isConfig});

  ProjectsList.fromJson(Map<String, dynamic> json) {
    projectId = json['project_id'];
    projectTitle = json['project_title'];
    projectDesc = json['project_desc'];
    projectImgName = json['project_img_name'];
    projectRedirectUrl = json['project_redirect_url'];
    activeStatus = json['active_status'];
    isConfig = json['is_config'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['project_id'] = this.projectId;
    data['project_title'] = this.projectTitle;
    data['project_desc'] = this.projectDesc;
    data['project_img_name'] = this.projectImgName;
    data['project_redirect_url'] = this.projectRedirectUrl;
    data['active_status'] = this.activeStatus;
    data['is_config'] = this.isConfig;
    return data;
  }
}


