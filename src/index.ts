import { registerPlugin } from '@capacitor/core';

import type { CapTest3Plugin } from './definitions';

const CapTest3 = registerPlugin<CapTest3Plugin>('CapTest3', {
  web: () => import('./web').then((m) => new m.CapTest3Web()),
});

export * from './definitions';
export { CapTest3 };
