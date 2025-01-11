import { WebPlugin } from '@capacitor/core';

import type { CapTest3Plugin } from './definitions';

export class CapTest3Web extends WebPlugin implements CapTest3Plugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }

  async printSomething(options: { value: string; }): Promise<{ value: string; }> {
    return {value: options.value}
  }
}
