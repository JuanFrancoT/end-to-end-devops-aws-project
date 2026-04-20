from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Test New Deployment"}

@app.get("/health")
def health():
    return {"status": "ok"}