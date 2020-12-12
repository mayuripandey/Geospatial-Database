g.region region=wake_30m@PERMANENT
r.surf.fractal output=elevation@PERMANENT
r.surf.fractal output=NCmayuri
r.surf.fractal output=NCmayuri
r.colors map=NCmayuri@user1 color=srtm
r.relief input=elevation@PERMANENT output=NCmayuri@user1
r.relief input=elevation@PERMANENT output=NCmayuri@user1
r.relief input=elevation@PERMANENT output=elevation@PERMANENT
r.relief input=elevation@PERMANENT output=NCmayuri@user1
r.relief input=elevation@PERMANENT output=NCmayuri
r.relief input=elevation@PERMANENT output=NCmayuri@user1
r.relief input=elevation@PERMANENT output=elevation@PERMANENT
r.relief --overwrite input=elevation@PERMANENT output=NCmayuri@user1
r.relief --overwrite input=elevation@PERMANENT output=elevation@PERMANENT
r.relief --overwrite input=elevation@PERMANENT output=elevation@PERMANENT
r.relief --overwrite input=elevation@PERMANENT output=elevation@PERMANENT
r.relief --overwrite input=elevation@PERMANENT output=NCmayuri
r.watershed elevation=elevation@PERMANENT threshold=10000 basin=elev.basins stream=elev.streams
g.region region=wake_30m@PERMANENT
r.surf.fractal output=jini
r.colors map=jini@user1 color=srtm
r.relief --overwrite input=elevation@PERMANENT output=jini@user1
r.relief --overwrite input=elevation@PERMANENT output=jini@user1
r.relief --overwrite input=elevation@PERMANENT output=jini@user1
r.relief --overwrite input=elevation@PERMANENT output=elevation.shade@user1
r.relief --overwrite input=elevation@PERMANENT output=jini
r.watershed elevation=elevation@PERMANENT threshold=10000 basin=elev.basins stream=elev.streams
r.watershed --overwrite elevation=elevation@PERMANENT threshold=10000 basin=elev.basins stream=elev.streams
r.watershed --overwrite elevation=elevation@PERMANENT threshold=10000 basin=elev.basins stream=elev.streams
r.to.vect -v input=elev.basins@user1 output=basins_areas type=area
v.rast.stats map=basins_areas@user1 raster=elevation@PERMANENT column_prefix=elev
v.rast.stats map=basins_areas@user1 raster=elevation@PERMANENT column_prefix=elev
v.rast.stats -c map=basins_areas@user1 raster=elevation@PERMANENT column_prefix=elev
v.colors -a map=basins_areas@user1 use=cat column=elev_average color=elevation
m.nviz.image elevation_map=elev.basins@user1,elev.streams@user1 vline=basins_areas@user1 output=C:\Users\Mayuri Pandey\Documents\grassdata\jini_image format=ppm size=640,480
m.nviz.image elevation_map=elev.basins@user1 vline=basins_areas@user1 output=C:\Users\Mayuri Pandey\Documents\grassdata\jini_image format=ppm size=640,480
