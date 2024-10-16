# 公式のimageを取得,必要に応じてバージョンを指定する
FROM continuumio/anaconda3 

# 作業ディレクトリを変更
WORKDIR /home/jovyan/workspace

# ファイルのコピー
COPY requirements.txt ${PWD}

# pip自体のアップデート
RUN pip install -U pip

# pythonのパッケージをインストール
RUN pip install -r requirements.txt