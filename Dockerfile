FROM bvlc/caffe:cpu

WORKDIR /quick-deep-dream/

COPY dream.ipynb flowers.jpg sky1024px.jpg /quick-deep-dream/

RUN pip install jupyter
# Unset token
RUN mkdir ~/.jupyter && \
	cd ~/.jupyter && \
	jupyter notebook --generate-config && \
	echo "c.NotebookApp.token = ''" >> ~/.jupyter/jupyter_notebook_config.py

# Download a file required to run the notebook
RUN wget http://dl.caffe.berkeleyvision.org/bvlc_googlenet.caffemodel -O /opt/caffe/models/bvlc_googlenet/bvlc_googlenet.caffemodel

EXPOSE 8080

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8080", "--allow-root"]