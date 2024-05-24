export RUNTIME_HTTP_ENABLED=true
export RUNTIME_LOCAL_MODELS_DIR=${PWD}/models/
export RUNTIME_LAZY_LOAD_LOCAL_MODELS=true
export RUNTIME_LIBRARY='caikit_nlp'


export MODEL=BAAI/bge-large-en-v1.5-caikit
export RUNTIME_HTTP_ENABLED=true
export RUNTIME_LOCAL_MODELS_DIR=${PWD}/models/
export RUNTIME_LAZY_LOAD_LOCAL_MODELS=true
export RUNTIME_LIBRARY='caikit_nlp'

curl --json '{                            
    "model_id": "BAAI/bge-large-en-v1.5-caikit/",
    "inputs": "At what temperature does liquid Nitrogen boil?"
}' localhost:8080/api/v1/task/text-generation
