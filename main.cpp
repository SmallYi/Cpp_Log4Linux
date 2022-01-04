#include "gloghelper.h"
using namespace std;

int main()
{
    GLogHelper loghelper;
    loghelper.InitLogger("MYLOG", google::INFO, "mylog");
    LOG(INFO) << "INFO test";
    LOG(WARNING) << "WARNING test";
    LOG(ERROR) << "ERROR test";
    return 0;
}