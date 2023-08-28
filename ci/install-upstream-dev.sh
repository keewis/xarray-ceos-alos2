#!/usr/bin/env bash

conda remove -y --force cytoolz numpy xarray construct toolz xarray-datatree fsspec python-dateutil
python -m pip install \
  -i https://pypi.anaconda.org/scientific-python-nightly-wheels \
  --no-deps \
  --pre \
  --upgrade \
  numpy \
  xarray
python -m pip install --upgrade \
  git+https://github.com/construct/construct \
  git+https://github.com/pytoolz/toolz \
  git+https://github.com/xarray-contrib/datatree \
  git+https://github.com/fsspec/filesystem_spec \
  git+https://github.com/dateutil/dateutil
