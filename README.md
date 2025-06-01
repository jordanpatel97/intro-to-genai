This repo contains materials and code examples for a hands-on course on getting started with Generative AI and Large Language Models (LLMs). The course is designed to help participants understand the fundamentals of GenAI and gain practical experience working with LLMs. 

## 💻 Local setup

You can setup your local environment in your macOS machine (or just use Google Colab), clone the repo and run locally:

```bash
# Clone the repository
git clone https://github.com/marc-olm/genai101.git
cd genai101

# Run the setup script
./setup.sh
```

This script will:
1. Create a virtual environment
2. Install all required dependencies
3. Set up the Jupyter kernel
4. Configure everything you need to run the notebooks

This course uses local open-source LLMs via [ollama](https://ollama.com/) for inference and embedding tasks.

## Project Structure

- `notebooks/`: Contains Jupyter notebooks with the course materials
- `data/`: Contains the Shakespeare dataset
- `requirements.txt`: Lists all Python dependencies
- `setup.sh`: Setup script to configure the environment

## References 

- RNNs parts are inspired by [rnn-effectiveness](https://karpathy.github.io/2015/05/21/rnn-effectiveness/) and code adapted from [github.com/karpathy/char-rnn](https://github.com/karpathy/char-rnn) by Andrej Karpathy
