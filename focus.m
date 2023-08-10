% given height and width of a parabola, find the focus

syms x y

prompt = {'Parabola height','Parabola width'};
dlgtitle = 'Parabola Calculator';
dims = [1 35];
userinput = inputdlg(prompt,dlgtitle,dims)

xbounds = (str2double(userinput{1,1}))/2
ybounds = str2double(userinput{2,1})

xpos = {-xbounds,0,xbounds}
ypos = {ybounds,0,ybounds}



% lagrange interpolation resulting in an equation describing a parabola
parabola_equation = simplify(((x-xpos{2})*(x-xpos{3}))/((xpos{1}-xpos{2})*(xpos{1}-xpos{3}))*ypos{1} + ((x-xpos{1})*(x-xpos{3}))/((xpos{2}-xpos{1})*(xpos{2}-xpos{3}))*ypos{2} + ((x-xpos{1})*(x-xpos{2}))/((xpos{3}-xpos{1})*(xpos{3}-xpos{2}))*ypos{3})

coefficient = parabola_equation/(x^2)

focus_height = 1/(4*coefficient)