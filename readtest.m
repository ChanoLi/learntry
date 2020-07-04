

function [M] = readstock(filename)
% ÿ������Ϊһ����¼,8���ֶ�,ÿ���ֶ�4���ֽ�,����Ϊ:(���һ���ֶκ���δ֪)
%  1        2      3       4        5      6    7
% ����  ���̼�  ��߼�  ��ͼ�  ���̼� �ɽ���  �ɽ���
% �۸��� ��ʵ�۸� ������100���Ľ��
% ���ؽ��:
% M  ÿһ�б�ʾһ�������
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
   
    
  