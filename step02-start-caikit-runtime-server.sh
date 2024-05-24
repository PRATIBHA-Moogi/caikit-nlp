#to run server locally

#first save models in the local directory

#run in python the below
# python step-00-load-and-save-models.py 

export MODEL=BAAI/bge-large-en-v1.5-caikit
export RUNTIME_HTTP_ENABLED=true
export RUNTIME_LOCAL_MODELS_DIR=${PWD}/models/
export RUNTIME_LAZY_LOAD_LOCAL_MODELS=true
export RUNTIME_LIBRARY='caikit_nlp'

export OTEL_ENDPOINT=http://0.0.0.0:4317

#only for the very first time
#pip install caikit-nlp@file:///<path-to-your-local-caikit_nlp-clone-repo>/caikit-nlp
#pip install caikit-nlp@file:///Users/pratibha/IBMCLOUD-OCP/watsonx-embedding-model-server/caikit-nlp/ 

python -m caikit.runtime
