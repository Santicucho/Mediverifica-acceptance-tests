// Comprueba que todos los archivos .feature tengan sintaxis Gherkin válida.
const fs = require('fs');
const path = require('path');
const { AstBuilder, GherkinClassicTokenMatcher, Parser } = require('@cucumber/gherkin');
const { IdGenerator } = require('@cucumber/messages');

function listar(dir) {
  return fs.readdirSync(dir, { withFileTypes: true }).flatMap(e =>
    e.isDirectory() ? listar(path.join(dir, e.name)) : e.name.endsWith('.feature') ? [path.join(dir, e.name)] : []);
}

let errores = 0, escenarios = 0;
const archivos = listar(path.join(__dirname, 'features'));
for (const f of archivos) {
  const parser = new Parser(new AstBuilder(IdGenerator.uuid()), new GherkinClassicTokenMatcher('es'));
  try {
    const doc = parser.parse(fs.readFileSync(f, 'utf8'));
    const n = doc.feature.children.filter(c => c.scenario).length;
    escenarios += n;
    console.log(`OK   ${path.relative(__dirname, f)} (${n} escenarios)`);
  } catch (e) {
    errores++;
    console.log(`ERROR ${path.relative(__dirname, f)}\n     ${e.message}`);
  }
}
console.log(`\n${archivos.length} archivos, ${escenarios} escenarios, ${errores} con errores.`);
process.exit(errores ? 1 : 0);
