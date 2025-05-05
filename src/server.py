from fastapi import FastAPI
from codygo_dep1.utils import mv_agg_value, some_other_def

app = FastAPI()

@app.get("/")
def root():
    return {
        "dep1": mv_agg_value,
        "dep2": some_other_def(),
    }

# def main():
#     import uvicorn
#     uvicorn.run("server:app", host="0.0.0.0", port=8000, reload=True)
