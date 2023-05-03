# Define a imagem base para o container
FROM python:3.9

# Define as variáveis de ambiente para o Python
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Define o diretório de trabalho como /code
WORKDIR /code

# Copia os arquivos para o diretório de trabalho
COPY . .

# Instala as dependências
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt 
    
COPY . .
