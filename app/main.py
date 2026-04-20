from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "CI/CD funcionando V2🚀"}

@app.get("/health")
def health():
    return {"status": "ok"}