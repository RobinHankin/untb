library("hexSticker")

pdf(file="untb_icon.pdf",bg="#7733FF")
x <- seq(from=0,to=1,len=100)
plot(x,(1-x)^2,type="l",lwd=3,axes=FALSE,xlab="",ylab="")
points(x,(1-x)^2/1.3,type="l",lwd=3)

points(x,(x)^2/2.4,type="l",lwd=3)
points(x,(x)^2/2.0,type="l",lwd=3)
dev.off()

sticker("untb_icon.pdf", package="untb", p_size=40, s_x=1, s_y=1.02,
s_width=0.9,asp=sqrt(3)/2, white_around_sticker=TRUE, h_fill="#7733FF",
h_color="#000000", filename="untb.png")
