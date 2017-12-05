internet=read.csv('winternet.csv')

View(internet)

new=reshape::melt(internet)

View(new)

new1=new%>% group_by(variable)%>%summarise(nal=sum(value,na.rm = T))

View(new3)
str(new1)
new3=tail(new,4222)

graph=ggplot(new2,aes(variable,nal,group= 1))+geom_line(aes(col='yellow'))+geom_point(aes(col='red'))+theme_bw()
graph
