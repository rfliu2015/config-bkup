# 为c, c++提供统一的编译脚本
# !/usr/bin/python3
# -*- coding: utf-8 -*-

from subprocess import call
from sys import argv
from os import path

cmplors = {'c': 'gcc', 'cpp': 'g++', 'py': 'python3', 'f90': 'gfortran'}
src_fmts = ['c', 'cpp', 'py', 'java', 'f90']
header_fmts = ['h']


def get_suffix(file):
    """get suffix of file.

    Arguments:
        file {str} -- file path

    Returns:
        str -- suffix of file. May ''
    """
    suffix = path.splitext(file)[-1]
    if suffix:
        return suffix[1:]
    else:
        return ''


def get_name(file):
    """get file name, suffix not inclusive.

    Arguments:
        file {str} -- file path

    Returns:
        str -- filename
    """
    name = path.splitext(file)[0]
    if name:
        return name
    else:
        return ''


def main(so_files):
    if not so_files:
        raise ValueError('parameter is invalid!')

    # --- get format of src and out files ---
    # first file is important
    fst_file = so_files[0]
    fst_fmt = get_suffix(fst_file)

    # first file is the out file
    if fst_fmt not in src_fmts:
        out_file = fst_file
        src_files = so_files[1:]
        # get the src file format
        for _srcf in src_files:
            _srcf_fmt = get_suffix(_srcf)
            if _srcf_fmt in src_fmts:
                src_fmt = _srcf_fmt
                break

    # first file isn't the out file
    else:
        last_file = so_files[-1]
        last_fmt = get_suffix(last_file)
        # the last file is src file
        if last_fmt in src_fmts:
            src_files = so_files[:]
            src_fmt = last_fmt

            # the out file from the last file name
            out_file = get_name(last_file) + '.out'
        # the last file is out file
        else:
            src_files = so_files[:-1]
            src_fmt = fst_fmt
            out_file = last_file

    # --- start executing the compiling---
    compilor = cmplors[src_fmt]

    if src_fmt == 'cpp':
        call(compilor + ' ' + ' '.join(src_files) +
             ' -Wall -g -std=c++11 -o ' + out_file, shell=True)
    elif src_fmt == 'c':
        call(compilor + ' ' + ' '.join(src_files) +
             ' -Wall -g -o ' + out_file, shell=True)
    elif src_fmt == 'py':
        call(compilor + ' ' + ' '.join(src_files), shell=True)
    elif src_fmt == 'f90':
        call(compilor + ' -fcheck=all ' + src_files, shell=True)


if __name__ == '__main__':
    files = argv[1:]
    main(files)
