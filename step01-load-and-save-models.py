import os
os.environ['ALLOW_DOWNLOADS'] = "1"

import caikit_nlp
model_name = "BAAI/bge-large-en-v1.5"
model = caikit_nlp.text_embedding.EmbeddingModule.bootstrap(model_name)
model.save(f"{model_name}-caikit")
