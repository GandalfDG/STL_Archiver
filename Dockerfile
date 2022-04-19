FROM python

# install blender to enable transformation (remeshing) of downloaded STLs
RUN apt update && apt install -y blender

RUN python -m pip install --upgrade pip

COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt

# this script will launch the blender console without attempting to load a graphical window
COPY blender.sh /usr/local/bin/blender_console
