const request = require("supertest");
const app = require("../index");

describe("Pruebas de la app Express", () => {
  test("GET / devuelve mensaje correcto", async () => {
    const res = await request(app).get("/");
    expect(res.statusCode).toBe(200);
    expect(res.body.message).toBe("Aplicación CI/CD funcionando");
  });

  test("GET /info devuelve datos del sistema", async () => {
    const res = await request(app).get("/info");
    expect(res.statusCode).toBe(200);
    expect(res.body.platform).toBeDefined();
  });

  test("GET /write crea archivo", async () => {
    const res = await request(app).get("/write");
    expect(res.statusCode).toBe(200);
    expect(res.body.status).toBe("Archivo creado");
  });
});
