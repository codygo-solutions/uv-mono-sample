from fastapi import FastAPI
from codygo_dep1.utils import mv_agg_value, some_other_def

app = FastAPI()

@app.get("/")
def root():
    return {
        "dep1": mv_agg_value+2,
        "dep2": some_other_def()
    }