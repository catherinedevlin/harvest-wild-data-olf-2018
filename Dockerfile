FROM python 
RUN useradd --create-home jupyter
WORKDIR /home/jupyter
COPY requirements.txt .
RUN pip install -r requirements.txt
USER jupyter
COPY notebooks notebooks
CMD  jupyter notebook --no-browser --ip=0.0.0.0 --port=8888
