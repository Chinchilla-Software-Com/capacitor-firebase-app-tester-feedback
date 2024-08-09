import { WebPlugin } from '@capacitor/core';

import type { FirebaseAppTesterFeebackPlugin } from './definitions';

export class FirebaseAppTesterFeebackWeb extends WebPlugin implements FirebaseAppTesterFeebackPlugin {
  async activate(): Promise<{ state: string }> {
    return { state: "NotSupported" };
  }
}
