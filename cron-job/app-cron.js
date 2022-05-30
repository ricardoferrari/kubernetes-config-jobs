const path = require('path');
const fs = require('fs');

const sourcefilePath = path.join(__dirname, 'story', 'text.txt');
const targetfilePath = path.join(__dirname, 'story', 'compilado.txt');


const text = fs.readFileSync(sourcefilePath, {encoding:'utf8', flag:'r'}).toString();

try {
  fs.appendFileSync(targetfilePath, text);
  fs.truncateSync(sourcefilePath, 0);
} catch (error) {
  console.log('Source is not emptied!');
  process.exit(1);
}

console.log('Job finished!');
process.exit(0);