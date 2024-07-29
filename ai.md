# AI

My learning testing models.
Im using locally those with ollama as docker with nvidia gpu.

## Hugging Face

https://huggingface.co/huggingface

### Add the ssh / gpg Key

https://huggingface.co/settings/keys

### Hub Doc

https://huggingface.co/docs/hub/index

## LocalAI

https://github.com/mudler/LocalAI/

```
docker run -ti --name local-ai -p 8080:8080 --gpus all localai/localai:latest-aio-gpu-nvidia-cuda-12
```

https://localai.io/basics/container/

https://localai.io/docs/getting-started/models/

## DeepSeek

https://github.com/deepseek-ai/deepseek-coder/

### DeepSeek Models

https://github.com/deepseek-ai

https://huggingface.co/deepseek-ai

## Mistral

https://mistral.ai/news/codestral-mamba/

## Ollama

https://github.com/ollama/ollama

https://hub.docker.com/r/ollama/ollama

### Ollama in Container

```
# enter the container
docker exec -it ollama bash

/root/.ollama/models
/root/.ollama/models/manifests/registry.ollama.ai/library

```

```
docker run -d --gpus=all -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama
```

### Llama

https://llama.meta.com/

https://github.com/meta-llama

https://github.com/meta-llama/llama3

### lm studio

https://github.com/lmstudio-ai

### Agents

https://github.com/Codium-ai/cover-agent

### Articles

https://klu.ai/blog/open-source-llm-models

## WIP

https://i.am.ai/roadmap/#note

---

https://www.heygen.com/

https://lumalabs.ai/
