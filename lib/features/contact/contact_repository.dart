import 'package:injectable/injectable.dart';
import 'package:my_portfolio/features/contact/model/contact_info.dart';

abstract class IContactRepository {
  Future<ContactInfo> getContactInfo();
}

@LazySingleton(as: IContactRepository)
class ContactRepository implements IContactRepository {
  @override
  Future<ContactInfo> getContactInfo() async {
    await Future.delayed(const Duration(milliseconds: 500));

    return const ContactInfo(
      title: "Let's build something amazing together!",
      // Viết mô tả nhấn mạnh vào Remote/Freelance
      description:
          "I am currently available for **Remote work** and **Freelance projects**. "
          "Whether you need a MVP built from scratch or a Senior developer to scale your team, "
          "I'm here to help.",
      email: "chien120697@gmail.com",
      phone: "(+84) 35 950 9251",
      location: "Ho Chi Minh City, Vietnam (GMT+7)",
      cvUrl:
          "https://drive.google.com/file/d/1bi40CXM_NlQjB8IbkHJ5lx4oG6317zb3/view?usp=drive_link",

      isOpenToWork: true,

      // VN: Liệt kê rõ ràng các hình thức nhận việc
      services: [
        "Remote Work",
        "Freelance Project",
        "Mobile App Consultation", // Tư vấn giải pháp
        "Mentoring", // Nếu bạn thích dạy kèm
      ],

      linkedinUrl: "https://www.linkedin.com/in/cat1m/",
      githubUrl: "https://github.com/Cat1m",
      mediumUrl: "https://medium.com/@chien120697",
    );
  }
}
