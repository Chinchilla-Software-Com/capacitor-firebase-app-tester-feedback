import { registerPlugin } from '@capacitor/core';

import type { FirebaseAppTesterFeebackPlugin } from './definitions';

const FirebaseAppTesterFeeback = registerPlugin<FirebaseAppTesterFeebackPlugin>('FirebaseAppTesterFeeback', {
  web: () => import('./web').then(m => new m.FirebaseAppTesterFeebackWeb()),
});

export * from './definitions';
export { FirebaseAppTesterFeeback };
