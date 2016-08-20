%% line_num.m by zwfree

%% Compute numbers of rows of specific file

%% Input specific filename

%% Output numbers of rows

function [rows]=line_num(filename)
fid=fopen(filename,'r');

if fid==-1;
error('file isnot exist');
return;
end

rows=0;
fseek(fid,0,-1);

while ~feof(fid)
   line=fgetl(fid);
   if isempty(line)||strncmp(fliplr(deblank(fliplr(line))),'%',1)
       continue;
   end
   rows=rows+1;
end
fclose(fid);
end