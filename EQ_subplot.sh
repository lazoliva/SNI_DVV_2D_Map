#!/usr/bin/env bash
#        GMT EXAMPLE 07
#
# Purpose:    Make a basemap with earthquakes and isochrons etc
# GMT modules:    coast, legend, text, plot
#
dfile=ZZF3_EQ.txt
dfile1=TTF3_EQ.txt
#dfile2=ZZF3_EQ_smooth.txt
#dfile3=TTF3_EQ_smooth.txt
##### CREATES NEW FILE (lon/lat/dt_RC/marker size indicator/phi), DIVIDED UP INTO dt RANGES
#awk '{print ($5,$4,0.0021,0.8c,0)}' $dfile > dt.d
#awk '{print ($7,$6,0.0021,0.8c,0)}' $dfile >> dt.d

######### CREATING OTHER DATA FILES #########

### FOR ZZ COMPONENT
awk '{if($3<-0.250) print ($5,$4,$7,$6)}' $dfile > dt1.d
awk '{if($3>-0.250 && $3<-0.222) print ($5,$4,$7,$6)}' $dfile > dt2.d
awk '{if($3>-0.222 && $3<-0.194) print ($5,$4,$7,$6)}' $dfile > dt3.d
awk '{if($3>-0.194 && $3<-0.166) print ($5,$4,$7,$6)}' $dfile > dt4.d
awk '{if($3>-0.166 && $3<-0.138) print ($5,$4,$7,$6)}' $dfile > dt5.d
awk '{if($3>-0.138 && $3<-0.11) print ($5,$4,$7,$6)}' $dfile > dt6.d
awk '{if($3>-0.11 && $3<-0.082) print ($5,$4,$7,$6)}' $dfile > dt7.d
awk '{if($3>-0.082 && $3<-0.054) print ($5,$4,$7,$6)}' $dfile > dt8.d
awk '{if($3>-0.054 && $3<-0.026) print ($5,$4,$7,$6)}' $dfile > dt9.d
awk '{if($3>-0.026 && $3<0) print ($5,$4,$7,$6)}' $dfile > dt10.d
awk '{if($3>0 && $3<0.026) print ($5,$4,$7,$6)}' $dfile > dt11.d
awk '{if($3>0.026 && $3<0.054) print ($5,$4,$7,$6)}' $dfile > dt12.d
awk '{if($3>0.054 && $3<0.082) print ($5,$4,$7,$6)}' $dfile > dt13.d
awk '{if($3>0.082 && $3<0.11) print ($5,$4,$7,$6)}' $dfile > dt14.d
awk '{if($3>0.11 && $3<0.138) print ($5,$4,$7,$6)}' $dfile > dt15.d
awk '{if($3>0.138 && $3<0.166) print ($5,$4,$7,$6)}' $dfile > dt16.d
awk '{if($3>0.166 && $3<0.194) print ($5,$4,$7,$6)}' $dfile > dt17.d
awk '{if($3>0.194 && $3<0.250) print ($5,$4,$7,$6)}' $dfile > dt18.d
awk '{if($3>0.222 && $3<0.250) print ($5,$4,$7,$6)}' $dfile > dt19.d
awk '{if($3>0.250) print ($5,$4,$7,$6)}' $dfile > dt20.d

# CREATES FILE WITH START & ENDPOINT OF LINE ALIGNED WITH FAST DIRECTION
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt1.d > phi1.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt2.d > phi2.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt3.d > phi3.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt4.d > phi4.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt5.d > phi5.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt6.d > phi6.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt7.d > phi7.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt8.d > phi8.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt9.d > phi9.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt10.d > phi10.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt11.d > phi11.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt12.d > phi12.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt13.d > phi13.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt14.d > phi14.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt15.d > phi15.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt16.d > phi16.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt17.d > phi17.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt18.d > phi18.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt19.d > phi19.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt20.d > phi20.d

### FOR TT COMPONENT
awk '{if($3<-0.250) print ($5,$4,$7,$6)}' $dfile1 > dt11.d
awk '{if($3>-0.250 && $3<-0.222) print ($5,$4,$7,$6)}' $dfile1 > dt22.d
awk '{if($3>-0.222 && $3<-0.194) print ($5,$4,$7,$6)}' $dfile1 > dt33.d
awk '{if($3>-0.194 && $3<-0.166) print ($5,$4,$7,$6)}' $dfile1 > dt44.d
awk '{if($3>-0.166 && $3<-0.138) print ($5,$4,$7,$6)}' $dfile1 > dt55.d
awk '{if($3>-0.138 && $3<-0.11) print ($5,$4,$7,$6)}' $dfile1 > dt66.d
awk '{if($3>-0.11 && $3<-0.082) print ($5,$4,$7,$6)}' $dfile1 > dt77.d
awk '{if($3>-0.082 && $3<-0.054) print ($5,$4,$7,$6)}' $dfile1 > dt88.d
awk '{if($3>-0.054 && $3<-0.026) print ($5,$4,$7,$6)}' $dfile1 > dt99.d
awk '{if($3>-0.026 && $3<0) print ($5,$4,$7,$6)}' $dfile1 > dt100.d
awk '{if($3>0 && $3<0.026) print ($5,$4,$7,$6)}' $dfile1 > dt111.d
awk '{if($3>0.026 && $3<0.054) print ($5,$4,$7,$6)}' $dfile1 > dt122.d
awk '{if($3>0.054 && $3<0.082) print ($5,$4,$7,$6)}' $dfile1 > dt133.d
awk '{if($3>0.082 && $3<0.11) print ($5,$4,$7,$6)}' $dfile1 > dt144.d
awk '{if($3>0.11 && $3<0.138) print ($5,$4,$7,$6)}' $dfile1 > dt155.d
awk '{if($3>0.138 && $3<0.166) print ($5,$4,$7,$6)}' $dfile1 > dt166.d
awk '{if($3>0.166 && $3<0.194) print ($5,$4,$7,$6)}' $dfile1 > dt177.d
awk '{if($3>0.194 && $3<0.250) print ($5,$4,$7,$6)}' $dfile1 > dt188.d
awk '{if($3>0.222 && $3<0.250) print ($5,$4,$7,$6)}' $dfile1 > dt199.d
awk '{if($3>0.250) print ($5,$4,$7,$6)}' $dfile1 > dt200.d

##### CREATES FILE WITH START & ENDPOINT OF LINE ALIGNED WITH FAST DIRECTION
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt11.d > phi11.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt22.d > phi22.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt33.d > phi33.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt44.d > phi44.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt55.d > phi55.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt66.d > phi66.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt77.d > phi77.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt88.d > phi88.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt99.d > phi99.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt100.d > phi100.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt111.d > phi111.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt122.d > phi122.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt133.d > phi133.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt144.d > phi144.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt155.d > phi155.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt166.d > phi166.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt177.d > phi177.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt188.d > phi188.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt199.d > phi199.d
awk '{print ($1), ($2) "\n" ($3), ($4) "\n" ">>"}' dt200.d > phi200.d

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
    
rm *.d
