export interface CapTest3Plugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  printSomething(options: {value: string}): Promise<{value: string}>;

  getPrinters(): Promise<{value: string[]}>
}
