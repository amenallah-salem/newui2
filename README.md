# New version 1.0.1
### LOCAL INIT 

###############################
chmod +x ./scripts/llamacpp_pull.sh
./scripts/llamacpp_pull.sh
rm -r llama-b4783-bin-ubuntu-x64.zip
>> kill the terminal 
###############################
chmod +x ./scripts/build_start_front.sh
./scripts/build_start_front.sh
>> kill the terminal 
###############################
>> create py3.11 venv & activate it
chmod +x ./scripts/init_back.sh
./scripts/init_back.sh
>> kill the terminal 
###############################
chmod +x ./scripts/set_env.sh
./scripts/set_env.sh
>> kill the terminal 
###############################
chmod +x ./scripts/pull_models.sh
./scripts/pull_models.sh
>> kill the terminal 
###############################

Start the project: 
chmod +x ./scripts/start_front.sh
./scripts/start_front.sh

chmod +x ./scripts/start_back.sh
./scripts/start_back.sh


### DOCKER BUILD RELEASES 
chmod +x ./build.sh
./build.sh



Build nativally using docker 

    - linux:: ubuntu dist: 
        - build.sh
        
Docker INIT 

publish release: ```AUTO RELEASE NOT IMPLEMENTED ```

# Depricated 7/3/2025
<details>
<summary>Depricated</summary>
project name has been changed to Hermes instead of doc-miner 
NOTE: Hermes is not the final agreed name for the project 

# scibds-python-doc-miner
![GitHub repo size]()
![GitHub last commit](?color=red)


Doc miner is an flexible, user-friendly self-hosted LLM project maintained by NY ds team under supervision of Angel Rojo, and dev (amenallah salem & Gilberto Garcia) built on top of open source offline projects (llama.cpp, openweb-ui, GGML, ...). Due to restriction reasons we do not support any LLM runners like VLLM, Ollama, but provide OpenAI-compatible APIs, and support any approved solution from santander bank.
Above we are providing in depth documentation for the project. 

NOTE: A full complete setup will require assistance from the dev team 
## Setup

### Project installation from source  

``` chmod +x scripts/on_start.sh && ./scripts/on_start.sh ```

<details>
<summary>Installing and verifying dependencies</summary>

```bash
# This is a python script to install and verify dependencies
python :/_scripts/_llama.cpp_server_setup.py

```
</details>

### Installation pip

1. **Support is only for Python>=3.11** 
   with ```pip install doc-miner ``` The app should run on http://localhost:8080

2. **Running server through OWUI**:
After installation, you can start the chat ui using: ```doc-miner run ```

### Models registery (aproval needed :: @inProgress)
The list is not final and can be changed in the future, 
Here are some example models that can be downloaded:

<details>
<summary>Models</summary>


| Model              | Parameters | Size  | Download                       |
| ------------------ | ---------- | ----- | ------------------------------ |
| Llama 3.2          | 3B         | 2.0GB | `./pull_model.sh  llama3.2`          |
| Llama 3.2          | 1B         | 1.3GB | `./pull_model.sh  llama3.2:1b`       |
| Llama 3.1          | 8B         | 4.7GB | `./pull_model.sh  llama3.1`          |
| Llama 3.1          | 70B        | 40GB  | `./pull_model.sh  llama3.1:70b`      |
| Llama 3.1          | 405B       | 231GB | `./pull_model.sh  llama3.1:405b`     |
| Phi 3 Mini         | 3.8B       | 2.3GB | `./pull_model.sh  phi3`              |
| Phi 3 Medium       | 14B        | 7.9GB | `./pull_model.sh  phi3:medium`       |
| Gemma 2            | 2B         | 1.6GB | `./pull_model.sh  gemma2:2b`         |
| Gemma 2            | 9B         | 5.5GB | `./pull_model.sh  gemma2`            |
| Gemma 2            | 27B        | 16GB  | `./pull_model.sh  gemma2:27b`        |
| Mistral            | 7B         | 4.1GB | `./pull_model.sh  mistral`           |
| Moondream 2        | 1.4B       | 829MB | `./pull_model.sh  moondream`         |
| Neural Chat        | 7B         | 4.1GB | `./pull_model.sh  neural-chat`       |
| Starling           | 7B         | 4.1GB | `./pull_model.sh  starling-lm`       |
| Code Llama         | 7B         | 3.8GB | `./pull_model.sh  codellama`         |
| Llama 2 Uncensored | 7B         | 3.8GB | `./pull_model.sh  llama2-uncensored` |
| LLaVA              | 7B         | 4.5GB | `./pull_model.sh  llava`             |
| Solar              | 10.7B      | 6.1GB | `./pull_model.sh  solar`             |

</details>




> [!NOTE]
> You should have at least 8 GB of RAM available to run the 7B models, 16 GB to run the 13B models, and 32 GB to run the 33B models.

> [!NOTE]  
> We have created some dockerfiles to support running the project on a dockerized env but we do not have approval for using docker

> [!NOTE]  
> The Default Configuration is set on ```docs```

> [!NOTE] 
> A set of tutorials for quickstart has been created [here](_Notebooks) 

### Additional 
- Errors and integration problems can be discussed [here](docs/troubleshooting.md) 

- A tutorial on the [classic chatbot](_ui/backend/_additional/README.md) 

- Agentic chat with Databases and csv files can be found [here](staging/RUN.md) 

### Release build


### Other Install tips

```python -m venv venv_llm_v4 && source venv_llm_v4/bin/activate```

For running in linux, check your ```nvcc --version ```


and ```nvidia-smi``` --> CUDA Version: 12.4

the following cmds for win machines use ```set ``` && ```set LLAMA_CPP_LIB= C:/ProgramData/anaconda3/lib/site-packages/llama_cpp/lib/llama.dll```

### Hardware support

- <details open>
    <summary>Base dependencies </summary>

    ```bash
    pip install -r ./requirements-serve-cpu.txt  -i http://nexus.alm.europe.cloudcenter.corp/repository/pypi-public/simple --trusted-host nexus.alm.europe.cloudcenter.corp/python
    # 
    ```

    </details>
- <details open>
    <summary>CPU support </summary>

    ```bash
    pip install -r ./requirements-serve-gpu.txt  -i http://nexus.alm.europe.cloudcenter.corp/repository/pypi-public/simple --trusted-host nexus.alm.europe.cloudcenter.corp/python

    # 
    ```

    </details>
- <details open>
    <summary>GPU support </summary>

    ```bash
    pip install -r ./requirements-base.txt  -i http://nexus.alm.europe.cloudcenter.corp/repository/pypi-public/simple --trusted-host nexus.alm.europe.cloudcenter.corp/python

    # 
    ```

    </details>


If anything went wrong due to proxy config or anyother issue please run the following installations manually through pip/conda/nexus direct install... 


```bash  

$ pip install chroma-hnswlib / ON_WIN64 ISSUE conda install -c conda-forge chroma-hnswlib -v
$ pip install -r ./requirements-base.txt
$ pip install -r ./requirements-serve-cpu.txt / pip install -r ./requirements-serve-gpu.txt / 

> **ON_WIN64 ISSUE** 
$ conda install -r ./requirements-serve-cpu.txt -v / $ conda install -r ./requirements-serve-gpu.txt -v
$ pip install --upgrade cmake pip scikit-build 

> **ON_WIN64 ISSUE** 
$ conda install conda-forge::scikit-build -v
```
Buinding installations and tests

```bash
export FORCE_CMAKE=1 
export GGML_CUDA=1  
export CUDA_HOME=/usr/bin/nvcc
export CMAKE_ARGS="-DLLAMA_CUDA=on"

GGML_CUDA=1 FORCE_CMAKE=1 CUDA_HOME=/usr/bin/nvcc CMAKE_ARGS=-DLLAMA_CUDA=on pip install --force-reinstall llama-cpp-python==0.3.1 --no-cache-dir --extra-index-url https://abetlen.github.io/llama-cpp-python/whl/124

export LLAMA_CPP_LIB=./venv_llm_v4/lib/python3.10/site-packages/llama_cpp/lib/libllama.so


# test: 
export FORCE_CMAKE=1 
export GGML_CUDA=1  
export CUDA_HOME=/usr/bin/nvcc
export LLAMA_CPP_LIB=./venv_llm_v4/lib/python3.10/site-packages/llama_cpp/lib/libllama.so

python -c 'from llama_cpp import Llama; Llama(model_path="./DeepSeek-R1-Distill-Llama-8B-Q8_0.gguf", n_gpu_layers=128, n_threads=6, n_ctx=3584, n_batch=521, verbose=True)'

```



To run on CPU only: ```pip install -r requirements-dev.txt``` , To run on GPU ```pip install -r requirements.txt ```

```pip install -e .```

### Builds
builds are to be donne in ```./builds```.  

- <details open>
    <summary>llama.cpp </summary>
    llama.cpp builds and modifications on the original o.source are managed by the DS.ny team and provided on the releaseds section in github 
    https://github.com/santander-group-scib-gln/cib-scibds-scbdpydocminer/releases
    <details>
    <summary>builds tags:  </summary>

    WIN: llama-bXXXX-bin-win-avx-x64, 

    LINUX: llama-bXXXX-bin-ubuntu-x64
    </details>

    Release commands 

    ```bash
    # cmds : win & linux: For future modifications check https://github.com/ggml-org/llama.cpp/tree/master/.github/workflows
    

    make clean && LLAMA_CUBLAS=1 make -j 
    export CUDA_DOCKER_ARCH=compute_75 
    make clean && GGML_CUDA=1 make -j
    ```
    Test llama.cpp release : 

    ```bash 
    cd ./builds/llama.cpp/ 
    ```
    ```bash 
    # server
    llama-server -m ../../_models/weights/gguf/qwen2-0_5b-instruct-q8_0.gguf --port 8080
    # llama-cli/ completion -prompt
    llama-cli -m ../../_models/weights/gguf/qwen2-0_5b-instruct-q8_0.gguf -p "hello " -n -1
    #llama-cli -conversation
    llama-cli -m ../../_models/weights/gguf/qwen2-0_5b-instruct-q8_0.gguf -p "hello " -n -1 -cnv
    ```
    ```bash 
    # production setup
    # offical doc for llama.cpp provider https://github.com/ggerganov/llama.cpp/blob/master/examples/server/README.md 
    #
    ./llama-server -m models/Llama-3.2-1B-Instruct-Q2_K.gguf --gpu-layers -1 --port 10000
    ./llama-server -m models/DeepSeek-R1-Distill-Llama-8B-Q8_0.gguf --gpu-layers -1 --port 10001


    ```
    </details>





- <details>
    <summary>_ui frontend </summary>


    documentation for integrating llama.cpp model into the ui 
    https://docs.openwebui.com/tutorials/integrations/deepseekr1-dynamic

    playground using python Pypi
    ```bash 
    pip install open-webui
    open-webui serve
    ```
    ```bash 
    # Additional topics and UI from source
    git clone https://github.com/open-webui/open-webui.git
    https://docs.openwebui.com/getting-started/advanced-topics/development/
    ```
    ```cd open-webui/```

    ```code .``` 
    ```bash 
        installation version

        {"node":">=18.13.0 <=22.x.x","npm":">=6.0.0"}
    ```

    Node version 

    ```https://stackoverflow.com/questions/76318653/how-can-i-install-node-js-version-18-on-ubuntu-22-04```


    the stable version that worked for me is 

    nvm install 22.13.1
    nvm use 22

    ```npm --version ```
    10.9.2

    ```node -v```
    v22.13.1


    ```Rmarq: stable hash e9d6ada25cd6ce84be067ba794af4c9d7116edc7```

    > Build react app 
    cp -RPp .env.example .env
    npm i
    npm run build

    if faced the following error -- do the following 


    ```bash 
    The error you're encountering (ENOSPC: System limit for number of file watchers reached) is a common issue on Linux, particularly when working with file watchers in development environments like Vite. It occurs because the number of files being watched exceeds the system's limit for file watchers.

    To resolve it, you can increase the file watcher limit:

        Check the current limit: You can check the current limit with this command:

    cat /proc/sys/fs/inotify/max_user_watches

    Increase the limit: To temporarily increase the limit, run:

    sudo sysctl fs.inotify.max_user_watches=524288

    Make the change permanent: To ensure the change persists after a reboot, add the following line to your /etc/sysctl.conf file:

    fs.inotify.max_user_watches=524288

    Then apply the changes with:

    sudo sysctl -p

    ```
    > Serving Frontend with the Backend

    ```

    source open-webui/backend/venv/bin/activate
    cd ./backend
    pip install -r requirements.txt -U
    bash start.sh

    ```
    > locate open-webui main installation dir 
    ```
    1- settings 
    2- admin settings 
    3- connection 
    4- openai connection http://127.0.0.1:10000/v1 API key None 
    ```


    > set up models
    
    for documents the default is: sentence-transformers/all-MiniLM-L6-v2
    > stable run and tests 
    ```bash 
    cd ./llama-b4604-bin-ubuntu-x64/build/bin
    ./llama-server -m models/DeepSeek-R1-Distill-Llama-8B-Q8_0.gguf --gpu-layers -1 --port 10001
    ./llama-server -m models/Llama-3.2-1B-Instruct-Q2_K.gguf --gpu-layers -1 --port 10000
    cd ../../..
    npm run dev
    cd backend
    source venv/bin/activate
    bash start.sh
    cd .. 
    ```
    
    >updates are followed by 

    ```bash 
    git pull origin branch 
    git commit -am " "
    git push -u origin_amen develop
    ```

    >prevent discussing new version : https://github.com/open-webui/open-webui/discussions/5759


    > Windows setup: 
    ```bash 
    conda activate llm_v3
    cd ./release/llama-b4663-bin-win-avx-x64

    ./llama-server -m ../../_models/weights/gguf/qwen2-0_5b-instruct-q8_0.gguf --gpu-layers -1 --port 10000
    ./llama-server -m ../../_models/weights/gguf/llama3.2-1b.gguf --gpu-layers -1 --port 10000
    ```

    >new terminal 

    ```bash 
    cd ../..
    cd _ui
    npm i 
    npm run build
    ```


    </details >

















### original_fk 

### Test llama.cpp builds (TO REVIEW)

custom built-in chat with doc files built on top of -llama.cpp && langchain 

```bash
python ./__main__.py --model_path ./_models/weights/llama3.2-1b.gguf --doc_dir ./tests/test_generation.txt --emb_model_path ./_models/weights/hf_c_emb_path/mxbai-embed-large-v1-f16.gguf  --use_gpu

```



### Configure api (dev in progress:: Not stable)

```python manage.py makemigrations ```

```python manage.py migrate ```

```python manage.py createsuperuser ```


```yaml 
Username: admin
Email address: amenallah.salem@servexternos.gruposantander.com
Password: adminadmin

```


Get or create base models

```python manage.py set_base_models```

Get or create base models admin_users

```python manage.py add_admin_users```


For users apis please refer to [Users](users/api_users.md)




### Stable functionalities 
- Chat built on top of ```Streamlit``` interface with your pdf documents using advanced RAG Architecture
- List of supported Models ```Llama3.x```, ```Mistral.x```. 
- Fast and efficient retrieval using vector databases
- APIs for interaction with Llm models 
- CLI/Library based functionalities for training, testing and information extraction jobs from PDFs 



### Run chat interface (pretrained-models chat, docs, csv, predefined jobs)
```streamlit run --server.port 8501 mutli_models_chatbot.py```

### Install cli 

to install the command line interface ```cd ./_cli ```

RUN either : ```pip install -e . ```or make the ```install.sh ``` excutable and run it. 



For GPU inference 

```miner-serve-llm --model_path "mistral" --use_gpu ```

```miner-serve-llm --model_path "mistral" ```

For interactive debug use 

```python ./src/__main__.py --model_path "mistral" --use_gpu ```

### Install doc_miner library  
```cd scibds_doc_miner_library``` & ```pip install -e . ```


## Finetune on custom dataset 

see the finetuning Notebook on _Notebooks file.  ```_Notebooks/finetune.ipynb ```

## Contribution

use theis debuggers config to get started,
 
```json
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Python:Streamlit",
            "type": "debugpy",
            "request": "launch",
            "module": "streamlit",
            "args": [
                "run",
                "${file}",
                "--server.port",
                "2000"
            ]
        }
    ]
}
```

use set pj_debug=True to see the full debug msgs in the chat 


## demo cmommands 
run native cpp chat 

./_models/weights/releases/llama-b4067-bin-win-avx-x64/llama-server.exe -m _models/weights/gguf/llama3.1-8b.gguf --port 8080

old v 

./_models/weights/releases/llama-b3985-bin-win-avx-x64/llama-server.exe -m _models/weights/gguf/llama3.1-8b.gguf --port 8080


# _server.urls
```json
admin/
api/
_models/
^media/(?P<path>.*)$
```


# Third party tools 

Crew ai 
langchain LLamacpp sql 

</details>
