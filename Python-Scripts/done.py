# 为c, c++提供统一的编译脚本
# !/usr/bin/python3
# -*- coding: utf-8 -*-

from subprocess import call
from sys import argv
from os import path

cmplors = {'c': 'gcc', 'cpp': 'g++', 'py': 'python3', 'f90': 'gfortran'}
src_extensions = ['c', 'cpp', 'py', 'java', 'f90']
header_fmts = ['h']


def get_suffix(file):
    """get suffix of file.

    Arguments:
        file {str} -- file path

    Returns:
        str -- suffix of file. May ''
    """
    _, suffix = path.splitext(file)
    if suffix:
        return suffix[1:]  # remove dot
    else:
        return ''


def get_genuine_name(file):
    """get file name, suffix not inclusive.

    Arguments:
        file {str} -- file path

    Returns:
        str -- filename
    """
    name, _ = path.splitext(path.basename(file))
    if name:
        return name
    else:
        return ''


def main(cmd_line):
    if not cmd_line:
        raise ValueError('parameter is invalid!')

    # --- get format of src and out files ---
    # first file is important
    fst_file = cmd_line[0]
    fst_fmt = get_suffix(fst_file)

    # --first file is the out file--
    if fst_fmt not in src_extensions:
        out_file = fst_file
        src_files = cmd_line[1:]
        # get the src file format
        for _srcf in src_files:
            may_src_fmt = get_suffix(_srcf)
            if may_src_fmt in src_extensions:
                src_fmt = may_src_fmt
                break

    # --first file isn't the out file--
    else:
        last_file = cmd_line[-1]
        last_fmt = get_suffix(last_file)

        # -the last file is src file
        # so outfile not given-
        if last_fmt in src_extensions:
            src_files = cmd_line[:]
            src_fmt = last_fmt

            # the out file from the last file name
            out_file = get_genuine_name(last_file) + '.out'

        # -the last file is out file-
        else:
            src_files = cmd_line[:-1]
            src_fmt = fst_fmt
            out_file = last_file

    # --- start executing the compiling ---
    compilor = cmplors[src_fmt]

    if src_fmt == 'cpp':
        call(
            compilor + ' ' + ' '.join(src_files) + ' -Wall -g -std=c++11 -o ' +
            out_file,
            shell=True)
    elif src_fmt == 'c':
        call(
            compilor + ' ' + ' '.join(src_files) + ' -Wall -g -o ' + out_file,
            shell=True)
    elif src_fmt == 'py':
        call(compilor + ' ' + ' '.join(src_files), shell=True)
    elif src_fmt == 'f90':
        call(compilor + ' -fcheck=all ' + src_files, shell=True)


if __name__ == '__main__':
    cmd_line = argv[1:]
    main(cmd_line)
