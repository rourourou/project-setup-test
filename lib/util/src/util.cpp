//
// Created by ga49jag on 18.04.19.
//

#include "util-priv.h"
#include "util.h"

namespace util {
    int square_aux(int x) {
        Eigen::MatrixXd m(2,2);
        m(0,0) = x;
        m(1,0) = x;
        m(0,1) = x;
        m(1,1) = x;

        std::cout << m << std::endl;
        return x*x;
    }

    int square(int x) {
        return square_aux(x);
    }
}

