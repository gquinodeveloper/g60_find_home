class RequestReservationModel {
    RequestReservationModel({
      required this.idUser,
      required this.idHouse,
      required this.date,
      required this.price,
    });

    String idUser;
    String idHouse;
    String date;
    String price;

    Map<String, dynamic> toJson() => {
        "idUser": idUser,
        "idHouse": idHouse,
        "date": date,
        "price": price,
    };
}