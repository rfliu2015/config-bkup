# 为shell命令ln加强，使得源路径不必是绝对路径
# !/usr/bin/python
# -*- coding: utf-8 -*-

from sys import argv
from subprocess import call
import os.path


def pln(lt):
    # Only need to find where the src starts
    # format: -sf src1 src2 ... dest ...
    if lt[0].startswith('-'):
        from_ = 1
    # format: src1 src2 ... dest ... -sf
    else:
        from_ = 0

    src = lt[from_]
    abs_src = os.path.abspath(src)
    lt[from_] = abs_src
    call(["ln"] + lt)


if __name__ == '__main__':
    pln(argv[1:])
