function [poly]=polyadd(poly1,poly2)
if length(poly1)<length(poly2)
    poly1=[zeros(1,length(poly2)-length(poly1)),poly1];
else
     poly2=[zeros(1,length(poly1)-length(poly2)),poly2];
end
    poly=poly1+poly2;
end