clear all;
x = load('iris.csv'); # Leemos EL TXT CON LOS PATRONES DE IRIS
[tamx, dimx] = size(x)
for i = 1:tamx
  num_cluster = 4;
  a=-1
  b=1
  w1 = a+(b-a) .* rand(dimx, num_cluster) # VALORES RAND A LA MTRIZ DE PESOS
  patx = x(1,:);
  y0 = w1'*patx' # POTENCIAL DE ACTIVACION
  [Ngana, Ind] = max(y0);
  y0(:) = 0;
  y0(Ind) = 1;
  y0
  nu=0.01; # TASA DE APRENDIZAJE
  w2 = w1(:, Ind);
  # ACTUALIZACION PESOS
  error = patx'-w2
  z1 = w2+nu*error;
  Normz=norm(z1)
  z = z1/Normz

  deltaw2=z/Normz
  end
