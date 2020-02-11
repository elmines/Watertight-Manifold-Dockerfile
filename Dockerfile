FROM ubuntu

RUN apt-get update
RUN apt-get install -y git make cmake g++ gcc wget

RUN git clone --recursive -j8 git://github.com/hjwdzh/Manifold;
RUN cd Manifold; mkdir build; cd build; cmake .. -DCMAKE_BUILD_TYPE=Release; make

RUN mkdir dataset;
RUN cd dataset; wget http://download.cs.stanford.edu/orion/Shapenet_Manifold/categories.txt

CMD /bin/bash
