@echo off
REM ****************************************************************************
REM Vivado (TM) v2017.4.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Mentor Graphics Questa Advanced Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Mon Jan 14 12:23:36 +0100 2019
REM SW Build 2117270 on Tue Jan 30 15:32:00 MST 2018
REM
REM Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
set bin_path=C:\\questasim64_10.7c\\win64
call %bin_path%/vsim  -c -do "do {sim1_elaborate.do}" -l elaborate.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0
