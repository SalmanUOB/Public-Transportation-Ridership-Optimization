const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code

exports.createUser = functions.https.onCall(async (data, context) => {
  // Authentication / user information is automatically added to the request.
  if (!context.auth || !context.auth.uid) {
    throw new functions.https.HttpsError(
      "unauthenticated",
      "You must be logged in to create a user.",
    );
  }

  const { email, password, displayName } = data;

  try {
    // Create a new user
    const userRecord = await admin.auth().createUser({ email, password });

    // Add metadata to Firestore
    const docRef = await admin
      .firestore()
      .collection("users")
      .doc(userRecord.uid);

    await docRef.set({
      name: displayName,
      email: email,
      created_time: admin.firestore.FieldValue.serverTimestamp(),
    });

    return {
      status: "SUCCESS",
      userId: userRecord.uid,
      docRef: docRef.path,
    };
  } catch (error) {
    console.error("Error creating user:", error);
    throw new functions.https.HttpsError(
      "internal",
      "Internal error occurred while creating user.",
    );
  }
});
