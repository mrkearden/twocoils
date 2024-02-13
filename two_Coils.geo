// Gmsh project created on Tue Jan 30 20:17:01 2024
SetFactory("OpenCASCADE");
//+
Sphere(1) = {0, 0, 0, 500, -Pi/2, Pi/2, 2*Pi};
//+
Torus(2) = {200, 0, 0, 100, 20, 2*Pi};
//+
Torus(3) = {-150, 0, 200, 100, 20, 2*Pi};
//+
BooleanFragments{ Volume{3}; Delete; }{ Volume{1}; Delete; }
//+
BooleanFragments{ Volume{2}; Delete; }{ Volume{4}; Delete; }
//+
Coherence;
//+
Physical Volume("coil1", 11) = {2};
//+
Physical Volume("coil2", 12) = {3};
//+
Physical Volume("air", 13) = {4};
//+
Physical Surface("outer", 14) = {3};
//+
Physical Surface("coil1s", 15) = {2};
//+
Physical Surface("coil2s", 16) = {4};

//+
Transfinite Curve {7} = 36 Using Progression 1;
//+
Transfinite Curve {4, 9} = 36 Using Progression 1;
//+
Transfinite Curve {10, 5} = 36 Using Progression 1;
