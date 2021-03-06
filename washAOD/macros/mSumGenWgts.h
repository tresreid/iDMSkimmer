#ifndef mSUMGENWGTS_HH
#define mSUMGENWGTS_HH

#include <iomanip>
#include <iostream>
#include <fstream>

#include <TChain.h>

#include "utils/common.h"
using namespace common;
#include "utils/json.hpp"
using json = nlohmann::json;

using std::cout, std::endl, std::map, std::vector;

namespace macro {

    extern "C" bool process(map<TString, SampleInfo> samples, vector<CutInfo> cuts_info, json cfg);

}

#endif // mSUMGENWGTS_HH
