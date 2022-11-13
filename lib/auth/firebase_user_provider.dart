import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CapitalOneFirebaseUser {
  CapitalOneFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

CapitalOneFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CapitalOneFirebaseUser> capitalOneFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<CapitalOneFirebaseUser>(
      (user) {
        currentUser = CapitalOneFirebaseUser(user);
        return currentUser!;
      },
    );
