/*
    This file is part of SBC Model Framework https://github.com/hominoids/SBC_Model_Framework
    Copyright 2016,2017,2018,2019,2020,2021,2022 Edward A. Kisiel hominoid@cablemi.com

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
    Code released under GPLv3: http://www.gnu.org/licenses/gpl.html


*/

// compute module holder class
module cm_holder(type, loc_x, loc_y, loc_z, side, rotation, pcbsize_z, enablemask, mask) {
    // jetson nano
    if(type == "jetsonnano") {        
        size_x = 73;
        size_y = 6.5;                
        place(loc_x, loc_y, loc_z, size_x, size_y, rotation, side, pcbsize_z)
        union() {  
            difference () {
                color("dimgray") translate([0,0,0]) cube([size_x,size_y,9.2]);
                color("dimgray") translate([1.5,-1,5.7]) cube([70,3,5]);
                color("dimgray") translate([3.5,-1,5.7]) cube([28.5,5.25,.92]);
                color("dimgray") translate([34.5,-1,5.7]) cube([35,5.25,.92]);
            }
            for (i=[2:.5:31]) {
                color("gold") translate ([i+.5,2,5.7]) cube([.25,2,.25]);
            }
            for (i=[34:.5:69]) {
                color("gold") translate ([i+.5,2,5.7]) cube([.25,2,.25]);
            }
        }
    }   
}

// compute module class
module cm(type, loc_x, loc_y, loc_z, side, rotation, pcbsize_z, enablemask, mask) {
    $fn=90;
    // jetson nano
    if(type == "jetsonnano") {        
        size_x = 70;
        size_y = 45;                
        place(loc_x, loc_y, loc_z, size_x, size_y, rotation, side, pcbsize_z)
        union() {  
            difference () {
                
                color("tan") translate([0,0,7]) cube([size_x,size_y,1.4]);
                color("tan") translate([37,-1,6]) cube([1,5,4]);
                color("dimgray") translate([-1,18,6]) cube([3,4,4]);
                color("dimgray") translate([size_x-2,18,6]) cube([3,4,4]);
                translate([size_x-3,size_y-3,6]) cylinder(d=3,h=3);
                translate([3,size_y-3,6]) cylinder(d=3,h=3);
                
            }
            for (i=[2:.5:36]) {
                color("gold") translate ([i+.5,0,6.8]) cube([.25,2,.25]);
                color("gold") translate ([i+.5,0,8.4]) cube([.25,2,.25]);
            }
            for (i=[37.5:.5:67]) {
                color("gold") translate ([i+.5,0,6.8]) cube([.25,2,.25]);
                color("gold") translate ([i+.5,0,8.4]) cube([.25,2,.25]);
            }
            color("dimgrey") translate([20,13,8.3]) cube([14,14,1.2]);
            difference() {
                color("black") translate([6.5,4.5,9.5]) cube([58,40,16]);
                color("dimgrey") translate([0,25.375,13.5]) rotate([90,2.5,90]) linear_extrude(70) {
                    polygon(points = [[0,0],[-.5,13],[4,13],[3.5,0]]);}
                color("dimgrey") translate([0,20.675,13.5]) rotate([90,-2.5,90]) linear_extrude(70) {
                    polygon(points = [[0,0],[-.5,13],[4,13],[3.5,0]]);}
                color("dimgrey") translate([0,30.5,13.5]) rotate([90,5,90]) linear_extrude(70) {
                    polygon(points = [[0,0],[-.5,13],[4,13],[3.5,0]]);}
                color("dimgrey") translate([0,15.25,13.5]) rotate([90,-5,90]) linear_extrude(70) {
                    polygon(points = [[0,0],[-.5,13],[4,13],[3.5,0]]);}
                color("dimgrey") translate([0,35,13.5]) rotate([90,10,90]) linear_extrude(70) {
                    polygon(points = [[0,0],[-.5,10.5],[4,10.5],[3.5,0]]);}
                color("dimgrey") translate([0,10.5,13]) rotate([90,-10,90]) linear_extrude(70) {
                    polygon(points = [[0,0],[-.5,10.5],[4,10.5],[3.5,0]]);}
                color("dimgrey") translate([0,36.5,20]) cube([70,10,4]);
                color("dimgrey") translate([0,1.5,20]) cube([70,10,4]);
                color("dimgrey") translate([0,39.5,13]) rotate([90,10,90]) linear_extrude(70) {
                    polygon(points = [[0,0],[0,10.5],[3,10.5],[3,0]]);}
                color("dimgrey") translate([0,6.5,12.5]) rotate([90,-10,90]) linear_extrude(70) {
                    polygon(points = [[0,0],[0,10.5],[3,10.5],[3,0]]);}
                color("dimgrey") translate([19,9,22]) cylinder(d=3, h=5);
                color("dimgrey") translate([51,9,22]) cylinder(d=3, h=5);
                color("dimgrey") translate([19,41,22]) cylinder(d=3, h=5);
                color("dimgrey") translate([51,41,22]) cylinder(d=3, h=5);
                    
            }
            difference() {
                union() {
                    color("silver") translate([size_x-3,size_y-3,0]) cylinder(d=5.2,h=7, $fn=6);
                    color("silver") translate([3,size_y-3,0]) cylinder(d=5.2,h=7, $fn=6);
                }
                color("silver") translate([size_x-3,size_y-3,-.1]) cylinder(d=3,h=13);
                color("silver") translate([3,size_y-3,-.1]) cylinder(d=3,h=13);
            }
        }
    }   
}
