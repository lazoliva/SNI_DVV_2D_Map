#!/usr/bin/env bash
#        GMT EXAMPLE 07
#
#
dfile=ZZF3_EQ.txt
dfile1=TTF3_EQ.txt
#dfile2=ZZF3_EQ_smooth.txt
#dfile3=TTF3_EQ_smooth.txt
##### CREATES NEW FILE (lon/lat/dt_RC/marker size indicator/phi), DIVIDED UP INTO dt RANGES
#awk '{print ($5,$4,0.0021,0.8c,0)}' $dfile > dt.d
#awk '{print ($7,$6,0.0021,0.8c,0)}' $dfile >> dt.d


###### MAKING THE MAPPS ######
gmt begin MAP-F3EQ15DAYS
    ### SETTING UP THE REGION——LIMITS/TOPOGRAPHY/ELEVATION
    gmt subplot begin 1x2 -A -M0.5c -Fs16c/0 -R-83.9/-83.723/9.918/10.05 -JM10c -B0.1 -T"15Day-EQ"
        gmt coast -JM5c -B0.1 -W0.1p -Ggray -c0,0
        gmt grdimage @earth_relief_01s -Cgeo -B0.05
        gmt grdcontour @earth_relief_01s -C100 -A200+f7p -Gd10c -L-2000/8000 -Wc0.2p -B+t"ZZ"
        ### PLOTTING THE DATA——SEISMIC STATIONS/VOLCANOES/EQ/Aftershock
        gmt plot stations.txt -St0.5i -Gdarksalmon
        gmt plot two_volc.txt -Si0.4i -Gpurple
        gmt plot after_shocks.csv -Sc0.2c -Gseagreen3
        gmt meca EQ.txt -Sa0.2i -W0.4p
        ### CREATING A COLOR BAR
        gmt makecpt -Cpolar -I -T-0.3/0.3/0.05
        gmt colorbar -DJCB+o0/1c -Bxaf+l"dv/v %" -C
        ### PLOTTING COLOR CODED INTERSTATION-PATH FOR CHANGES IN DV/V
        gmt plot phi1.d -W4p,255/25/25 -A
        gmt plot phi2.d -W4p,255/50/50 -A
        gmt plot phi3.d -W4p,255/75/75 -A
        gmt plot phi4.d -W4p,255/100/100 -A
        gmt plot phi5.d -W4p,255/125/125 -A
        gmt plot phi6.d -W4p,255/150/150 -A
        gmt plot phi7.d -W4p,255/175/175 -A
        gmt plot phi8.d -W4p,255/200/200 -A
        gmt plot phi9.d -W4p,255/225/225 -A
        gmt plot phi10.d -W4p,255/235/235 -A
        gmt plot phi11.d -W4p,235/235/255 -A
        gmt plot phi12.d -W4p,225/225/255 -A
        gmt plot phi13.d -W4p,200/200/255 -A
        gmt plot phi14.d -W4p,175/175/255 -A
        gmt plot phi15.d -W4p,150/150/255 -A
        gmt plot phi16.d -W4p,125/125/255 -A
        gmt plot phi17.d -W4p,100/100/255 -A
        gmt plot phi18.d -W4p,75/75/255 -A
        gmt plot phi19.d -W4p,50/50/255 -A
        gmt plot phi20.d -W4p,25/25/255 -A
        
        gmt coast -JM5 -B0.1 -W0.1p -Ggray -c0,1
        gmt grdimage @earth_relief_01s -Cgeo -B0.05
        gmt grdcontour @earth_relief_01s -C100 -A200+f7p -Gd10c -L-2000/8000 -Wc0.2p -B+t"TT"
        ### PLOTTING THE DATA——SEISMIC STATIONS/VOLCANOES/EQ/Aftershock
        gmt plot stations.txt -St0.5i -Gdarksalmon
        gmt plot two_volc.txt -Si0.4i -Gpurple
        gmt plot after_shocks.csv -Sc0.2c -Gseagreen3
        gmt meca EQ.txt -Sa0.2i -W0.4p
        ### CREATING A COLOR BAR
        gmt makecpt -Cpolar -I -T-0.3/0.3/0.05
        gmt colorbar -DJCB+o0/1c -Bxaf+l"dv/v %" -C
        ### PLOTTING COLOR CODED INTERSTATION-PATH FOR CHANGES IN DV/V
        gmt plot phi11.d -W4p,255/25/25 -A
        gmt plot phi22.d -W4p,255/50/50 -A
        gmt plot phi33.d -W4p,255/75/75 -A
        gmt plot phi44.d -W4p,255/100/100 -A
        gmt plot phi55.d -W4p,255/125/125 -A
        gmt plot phi66.d -W4p,255/150/150 -A
        gmt plot phi77.d -W4p,255/175/175 -A
        gmt plot phi88.d -W4p,255/200/200 -A
        gmt plot phi99.d -W4p,255/225/225 -A
        gmt plot phi100.d -W4p,255/235/235 -A
        gmt plot phi111.d -W4p,235/235/255 -A
        gmt plot phi122.d -W4p,225/225/255 -A
        gmt plot phi133.d -W4p,200/200/255 -A
        gmt plot phi144.d -W4p,175/175/255 -A
        gmt plot phi155.d -W4p,150/150/255 -A
        gmt plot phi166.d -W4p,125/125/255 -A
        gmt plot phi177.d -W4p,100/100/255 -A
        gmt plot phi188.d -W4p,75/75/255 -A
        gmt plot phi199.d -W4p,50/50/255 -A
        gmt plot phi200.d -W4p,25/25/255 -A
    gmt subplot end
gmt end show
    
#rm *.d
