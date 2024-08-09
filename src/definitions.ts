export interface FirebaseAppTesterFeebackPlugin {
	/**
	* Calls the firebaseAppDistribution.showFeedbackNotification method
	* see https://firebase.google.com/docs/app-distribution/collect-feedback-from-testers#notification-trigger
	*/
	activate(): Promise<{ state: string }>;
}