using DFTK: Mat3, Vec3

silicon = (
    lattice = [0.0  5.131570667152971 5.131570667152971;
               5.131570667152971 0.0 5.131570667152971;
               5.131570667152971 5.131570667152971  0.0],
    atnum = 14,
    n_electrons = 8,
    psp = "si-pade-q4.hgh",
    positions = [ones(3)/8, -ones(3)/8],  # in fractional coordinates
    kcoords = [[   0,   0, 0],  # in fractional coordinates
               [ 1/3,   0, 0],
               [ 1/3, 1/3, 0],
               [-1/3, 1/3, 0]],
    ksymops = Vector{Vector{Tuple{Mat3{Int},Vec3{Float64}}}}([
        [([ 1  0  0;  0  1  0;  0  0  1], [ 0.0,  0.0,  0.0])],
        [([ 1  0  0;  0  1  0;  0  0  1], [ 0.0,  0.0,  0.0]),
         ([-1  0  1;  0 -1  1;  0  0  1], [ 0.0,  0.0, -0.5]),
         ([ 0  1 -1;  1  0 -1;  0  0 -1], [ 0.0,  0.0,  0.5]),
         ([ 0 -1  0; -1  0  0;  0  0 -1], [ 0.0,  0.0,  0.0]),
         ([ 0 -1  1;  0 -1  0;  1 -1  0], [ 0.0,  0.5,  0.0]),
         ([ 1  0 -1;  1  0  0;  1 -1  0], [ 0.0, -0.5,  0.0]),
         ([ 0  1  0;  0  1 -1; -1  1  0], [-0.5,  0.0,  0.0]),
         ([-1  0  0; -1  0  1; -1  1  0], [ 0.5,  0.0,  0.0])],
        [([ 1  0  0;  0  1  0;  0  0  1], [ 0.0,  0.0,  0.0]),
         ([-1  0  0; -1  0  1; -1  1  0], [ 0.5,  0.0,  0.0]),
         ([ 0  1  0;  0  0  1;  1  0  0], [ 0.0,  0.0,  0.0]),
         ([-1  1  0;  0  1  0;  0  1 -1], [ 0.0, -0.5,  0.0]),
         ([-1  0  1; -1  1  0; -1  0  0], [ 0.0,  0.0,  0.5]),
         ([ 0  0  1; -1  0  1;  0 -1  1], [-0.5,  0.0,  0.0])],
        [([ 1  0  0;  0  1  0;  0  0  1], [ 0.0,  0.0,  0.0]),
         ([ 0  1 -1;  1  0 -1;  0  0 -1], [ 0.0,  0.0,  0.5]),
         ([ 1  0 -1;  0  0 -1;  0  1 -1], [ 0.0,  0.5,  0.0]),
         ([-1  1  0;  0  1  0;  0  1 -1], [ 0.0, -0.5,  0.0]),
         ([ 0  0 -1;  0 -1  0; -1  0  0], [ 0.0,  0.0,  0.0]),
         ([-1  0  1; -1  1  0; -1  0  0], [ 0.0,  0.0,  0.5]),
         ([ 1  0 -1;  1  0  0;  1 -1  0], [ 0.0, -0.5,  0.0]),
         ([ 0  1  0;  0  0  1;  1  0  0], [ 0.0,  0.0,  0.0]),
         ([ 0  0  1; -1  0  1;  0 -1  1], [-0.5,  0.0,  0.0]),
         ([ 0  1  0;  0  1 -1; -1  1  0], [-0.5,  0.0,  0.0]),
         ([ 0 -1  0;  1 -1  0;  0 -1  1], [ 0.5,  0.0,  0.0]),
         ([ 1 -1  0;  1  0 -1;  1  0  0], [ 0.0,  0.0, -0.5])]
       ]),
)

manganese = (
    lattice = [-3.0179389205999998 -3.0179389205999998 0.0000000000000000;
               -5.2272235447000002 5.2272235447000002 0.0000000000000000;
               0.0000000000000000 0.0000000000000000 -9.7736219469000005],
    atnum = 12,
    n_electrons = 4,
    psp = "mg-pade-q2.hgh",
    positions = [[2/3, 1/3, 1/4], [1/3, 2/3, 3/4]],
    kcoords =  [[0,   0,   0],
                [1/3, 0,   0],
                [1/3, 1/3, 0],
                [0,   0,   1/3],
                [1/3, 0,   1/3],
                [1/3, 1/3, 1/3]],
    ksymops = Vector{Vector{Tuple{Mat3{Int},Vec3{Float64}}}}([
        [([ 1  0  0;  0  1  0;  0  0  1], [ 0.0,  0.0,  0.0])],
        [([ 1  0  0;  0  1  0;  0  0  1], [ 0.0,  0.0,  0.0]),
         ([-1  0  0;  0 -1  0;  0  0 -1], [ 0.0,  0.0,  0.0]),
         ([ 0 -1  0;  1  1  0;  0  0  1], [ 0.0,  0.0, -0.5]),
         ([-1 -1  0;  1  0  0;  0  0  1], [ 0.0,  0.0,  0.0]),
         ([ 0  1  0; -1 -1  0;  0  0 -1], [ 0.0,  0.0,  0.5]),
         ([ 1  1  0; -1  0  0;  0  0 -1], [ 0.0,  0.0,  0.0])],
        [([ 1  0  0;  0  1  0;  0  0  1], [ 0.0,  0.0,  0.0]),
         ([-1  0  0;  0 -1  0;  0  0 -1], [ 0.0,  0.0,  0.0])],
        [([ 1  0  0;  0  1  0;  0  0  1], [ 0.0,  0.0,  0.0]),
         ([-1  0  0;  0 -1  0;  0  0 -1], [ 0.0,  0.0,  0.0])],
        [([ 1  0  0;  0  1  0;  0  0  1], [ 0.0,  0.0,  0.0]),
         ([-1  0  0;  0 -1  0;  0  0  1], [ 0.0,  0.0, -0.5]),
         ([ 0 -1  0;  1  1  0;  0  0  1], [ 0.0,  0.0, -0.5]),
         ([-1 -1  0;  1  0  0;  0  0  1], [ 0.0,  0.0,  0.0]),
         ([ 0  1  0; -1 -1  0;  0  0  1], [ 0.0,  0.0,  0.0]),
         ([ 1  1  0; -1  0  0;  0  0  1], [ 0.0,  0.0, -0.5]),
         ([ 1  0  0;  0  1  0;  0  0 -1], [ 0.0,  0.0,  0.5]),
         ([-1  0  0;  0 -1  0;  0  0 -1], [ 0.0,  0.0,  0.0]),
         ([ 0 -1  0;  1  1  0;  0  0 -1], [ 0.0,  0.0,  0.0]),
         ([-1 -1  0;  1  0  0;  0  0 -1], [ 0.0,  0.0,  0.5]),
         ([ 0  1  0; -1 -1  0;  0  0 -1], [ 0.0,  0.0,  0.5]),
         ([ 1  1  0; -1  0  0;  0  0 -1], [ 0.0,  0.0,  0.0])],
        [([ 1  0  0;  0  1  0;  0  0  1], [ 0.0,  0.0,  0.0]),
         ([ 0 -1  0;  1  1  0;  0  0  1], [ 0.0,  0.0, -0.5]),
         ([ 0  1  0; -1 -1  0;  0  0 -1], [ 0.0,  0.0,  0.5]),
         ([-1  0  0;  0 -1  0;  0  0 -1], [ 0.0,  0.0,  0.0])],
    ]),
)
