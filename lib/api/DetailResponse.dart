
class DetailResponse {

  String id;
  String title;
  String resume;
  String description;
  Null subtitle;
  String createdAt;
  int views;
  int publish;
  Null headline;
  int likes;
  String menu;
  String submenu;
  String category;
  String subcategory;
  String source;
  String regenciesAsRegency;
  String province;
  String image;
  String editor;
  int error;

	DetailResponse.fromJsonMap(Map<String, dynamic> map): 
		  id = map['id'],
    title = map['title'],
    resume = map['resume'],
    description = map['description'],
    subtitle = map['subtitle'],
    createdAt = map['created_at'],
    views = map['views'],
    publish = map['publish'],
    headline = map['headline'],
    likes = map['likes'],
    menu = map['menu'],
    submenu = map['submenu'],
    category = map['category'],
    subcategory = map['subcategory'],
    source = map['source'],
    regenciesAsRegency = map['regencies as regency'],
    province = map['province'],
    image = map['image'],
    editor = map['editor'];


	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
  data['id'] = id;
    data['title'] = title;
    data['resume'] = resume;
    data['description'] = description;
    data['subtitle'] = subtitle;
    data['created_at'] = createdAt;
    data['views'] = views;
    data['publish'] = publish;
    data['headline'] = headline;
    data['likes'] = likes;
    data['menu'] = menu;
    data['submenu'] = submenu;
    data['category'] = category;
    data['subcategory'] = subcategory;
    data['source'] = source;
    data['regencies as regency'] = regenciesAsRegency;
    data['province'] = province;
    data['image'] = image;
    data['editor'] = editor;
    return data;
	}
}
