// o check the connectivity status of your device, you can use the checkConnectivity() method of the Connectivity class:
// var connectivityResult = await (Connectivity().checkConnectivity());
// if (connectivityResult == ConnectivityResult.mobile) {
// // You are connected to a mobile network.
// } else if (connectivityResult == ConnectivityResult.wifi) {
// // You are connected to a wifi network.
// } else {
// // You are not connected to any network.
// }
//
//
// You can also listen for changes in the connectivity status using the onConnectivityChanged stream:
//
// Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
// if (result == ConnectivityResult.mobile) {
// // You are connected to a mobile network.
// } else if (result == ConnectivityResult.wifi) {
// // You are connected to a wifi network.
// } else {
// // You are not connected to any network.
// }
// });
