FROM python:3.9
# Define a imagem base para o container

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
# Define as variáveis de ambiente para o Python

# Adiciona um usuário não-root
RUN addgroup -S appgroup && adduser -S appuser -G appgroup 

# Define o diretório de trabalho para o usuário appuser
WORKDIR /home/appuser

# Define o usuário padrão para appuser
USER appuser

WORKDIR /code
# Define o diretório de trabalho como /code

RUN    pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt 
    

COPY . .
# Copia os arquivos para o diretório de trabalho
