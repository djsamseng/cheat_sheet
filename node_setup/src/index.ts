

import * as fs from "fs";

async function timeout(t: number) {
  return new Promise((fulfill) => {
    setTimeout(fulfill, t);
  })
}

async function main() {
  console.log("Starting main");
  await timeout(1000);
  console.log("Finished main");
}

main();
