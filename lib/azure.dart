// import 'package:flutter/material.dart';
// import 'package:azure_storage/azure_storage.dart';
//

//Create an Azure account: Go to the Azure portal and create an account if you don't already have one.
//
// Create an app in Azure: Once you're logged into your Azure account, create a new app service. This will host your Flutter app in the cloud.
//
// Configure the app service: In the app service settings, select the platform as Linux and the runtime stack as Node.js. Also, configure the deployment options for your app.
//
// Publish your Flutter app: You can publish your Flutter app to Azure using the Azure CLI or Visual Studio Code extensions. Follow the documentation for more information on how to publish your app.
//
// Configure the app to use Azure services: Depending on your app requirements, you can use various Azure services such as Azure Storage, Azure SQL Database, Azure Cognitive Services, and more. Configure your app to use these services as per your needs.
//
// Test and deploy: Once you have configured your app and integrated it with Azure services, test it thoroughly to ensure it's working as expected. Once you're satisfied, deploy your app to the production environment.
//
// By following these steps, you can build a Flutter app that integrates with Azure services and is hosted in the cloud.


// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   final azureStorage = AzureStorage.parse(
//     'DefaultEndpointsProtocol=https;'
//         'AccountName=<your-account-name>;'
//         'AccountKey=<your-account-key>',
//   );
//
//   Future<void> uploadFile() async {
//     final containerName = 'my-container';
//     final blobName = 'my-file.png';
//     final data = await _loadImageData();
//
//     await azureStorage.putBlob(
//       containerName,
//       blobName,
//       data,
//       overwrite: true,
//     );
//   }
//
//   Future<Uint8List> _loadImageData() async {
//     final imageAsset = AssetImage('assets/my-image.png');
//     final byteData = await imageAsset.getByteData();
//     return byteData.buffer.asUint8List();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Azure Blob Storage Example'),
//         ),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () => uploadFile(),
//             child: Text('Upload File to Azure'),
//           ),
//         ),
//       ),
//     );
//   }
// }
