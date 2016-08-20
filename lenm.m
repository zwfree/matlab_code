function y = lenm(sfile)
% lenm count the code lines of a M-file,
% not include the comments and blank lines
s=deblank(sfile)
if length(s)<2|| (length(s)>2&&any(lower(s(end-1:end))~='.m'))
s=[s,'.m']; %�ж�������չ��.m����û�У������
end
if exist(s,'file')~=2;error([s,' not exist']);return;end
%�ж�ָ����m �ļ��Ƿ���ڣ��������ڣ�����ʾ������Ϣ��������
fid=fopen(s,'r');count=0; %��ָ����m �ļ�
while ~feof(fid);
line=fgetl(fid) %���ж�ȡ�ļ�������
if isempty(line)||strncmp(deblanks(line),'%',1);
%�ж��Ƿ�Ϊ�հ��л�ע����
continue; %���ǿհ��л�ע������ִ����һ��ѭ��
end
count=count+1; %��¼Դ���������
end
y=count;

function st=deblanks(s); %ɾ���ַ����е���β�ո�ĺ���
st=fliplr(deblank(fliplr(deblank(s))));