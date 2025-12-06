const express = require("express");
const fs = require("fs");
const os = require("os");

const app = express();

app.get("/", (req, res) => {
  res.json({ message: "Aplicación CI/CD funcionando" });
});

app.get("/info", (req, res) => {
  res.json({
    platform: os.platform(),
    node: process.version
  });
});

app.get("/write", (req, res) => {
  fs.writeFileSync("./output.txt", "Archivo creado desde la app");
  res.json({ status: "Archivo creado" });
});

if (require.main === module) {
  app.listen(3000, () => console.log("Servidor ejecutándose en puerto 3000"));
}

module.exports = app;  // 
