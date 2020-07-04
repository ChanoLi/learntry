

function [M] = readstock(filename)
% 每天数据为一个记录,8个字段,每个字段4个字节,依次为:(最后一个字段含义未知)
%  1        2      3       4        5      6    7
% 日期  开盘价  最高价  最低价  收盘价 成交额  成交量
% 价格是 真实价格 “乘以100”的结果
% 返回结果:
% M  每一行表示一天的数据
%
    fid = fopen(filename,'rb')
    M = [];

    while ~feof(fid)
        a = fread(fid,5,'int32'); % 5
        b = fread(fid,1,'float32'); % 1
        c = fread(fid,2,'int32');   %2 
        M = [M;
            a' b' c'];
    end

    fclose(fid);
   
    
  