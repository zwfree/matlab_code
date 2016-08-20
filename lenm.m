function y = lenm(sfile)
% lenm count the code lines of a M-file,
% not include the comments and blank lines
s=deblank(sfile)
if length(s)<2|| (length(s)>2&&any(lower(s(end-1:end))~='.m'))
s=[s,'.m']; %判断有无扩展名.m，若没有，则加上
end
if exist(s,'file')~=2;error([s,' not exist']);return;end
%判断指定的m 文件是否存在；若不存在，则显示错误信息，并返回
fid=fopen(s,'r');count=0; %打开指定的m 文件
while ~feof(fid);
line=fgetl(fid) %逐行读取文件的数据
if isempty(line)||strncmp(deblanks(line),'%',1);
%判断是否为空白行或注释行
continue; %若是空白行或注释行则执行下一次循环
end
count=count+1; %记录源代码的行数
end
y=count;

function st=deblanks(s); %删除字符串中的首尾空格的函数
st=fliplr(deblank(fliplr(deblank(s))));