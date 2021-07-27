abstract class Notification{
  void onNotification(String message);
}

class YoutubeChannel{

  Notification? notification;

  void subsribe(User user){
    notification = user; // Polymorphism
    // notification is a reference which is now pointing to the object of User
  }

  void uploadNewVideo(String title){
    print("Upload Started....");
    print("Upload Finished....");
    notification!.onNotification("A new Video has been uploaded ${title}");
  }

}

class User extends Notification{

  String? name;
  String? email;

  User({this.name, this.email});

  @override
  String toString() {
    return "${name} | ${email}";
  }

  void onNotification(String message){
    print("~~~~~~~~~~~~~~~~~");
    print("New Notification");
    print(message);
    print("~~~~~~~~~~~~~~~~~");
  }

}

void main(){

  YoutubeChannel channel = YoutubeChannel();

  User user1 = User(name: "John", email: "john@example.com");
  channel.subsribe(user1);

  channel.uploadNewVideo("Intro to OOPS :)");

}