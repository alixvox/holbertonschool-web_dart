// 4-get_sum.dart

import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Fetch the user data.
    String userData = await fetchUserData();
    var parsedUserData = jsonDecode(userData);
    String userId = parsedUserData['id'];

    // Fetch the user's orders.
    String userOrdersData = await fetchUserOrders(userId);
    List<String> userOrders = List<String>.from(jsonDecode(userOrdersData));

    // Calculate the total price.
    double totalPrice = 0.0;
    for (String product in userOrders) {
      String productPriceData = await fetchProductPrice(product);
      num productPrice = jsonDecode(productPriceData);  // Use num type here
      totalPrice += productPrice.toDouble();  // Convert to double before adding
    }

    return totalPrice;
  } catch (e) {
    // If an error occurs, return -1.
    return -1.0;
  }
}
