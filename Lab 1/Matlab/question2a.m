function averages = question2a(grades,maximum,columns)

averages = (100/length(columns))*sum(grades(:,columns-1)./maximum(:,columns-1),2);