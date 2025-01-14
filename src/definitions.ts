export interface CapTest3Plugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
