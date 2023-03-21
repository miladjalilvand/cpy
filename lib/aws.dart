// amplify init
// amplify add auth
// amplify push
//
//
// dependencies:
// amplify_flutter: <latest_version>
//
//
// void main() {
//   runApp(MyApp());
//   AmplifyFlutter.initialize();
// }
//
// Configure the Amplify Flutter library with your Amplify project by adding the following code in your main.dart file:
//
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await AmplifyFlutter.configure();
//   runApp(MyApp());
// }
// To sign up a new user, use the following code:
//
//
// try {
// SignUpResult res = await Amplify.Auth.signUp(
// username: 'testuser',
// password: 'Testpassword@123',
// options: CognitoSignUpOptions(
// userAttributes: {'email': 'testuser@example.com'},
// ),
// );
// // User signed up successfully
// } on AuthException catch (e) {
// // Error occurred during sign up
// }
// To confirm a user's sign up, use the following code:
//
// To sign up a new user, use the following code:
//
//
//
// try {
// SignUpResult res = await Amplify.Auth.confirmSignUp(
// username: 'testuser',
// confirmationCode: '123456',
// );
// // User sign up confirmed successfully
// } on AuthException catch (e) {
// // Error occurred during sign up confirmation
// }
// To sign in a user, use the following code:
//
//
// try {
// SignInResult res = await Amplify.Auth.signIn(
// username: 'testuser',
// password: 'Testpassword@123',
// );
// // User signed in successfully
// } on AuthException catch (e) {
// // Error occurred during sign in
// }
//
// To sign out a user, use the following code:
//
// try {
// await Amplify.Auth.signOut();
// // User signed out successfully
// } on AuthException catch (e) {
// // Error occurred during sign out
// }
//
