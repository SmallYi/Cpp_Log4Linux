#include "gloghelper.h"
using namespace std;

int main()
{
    GLogHelper loghelper;
    loghelper.InitLogger("MYLOG", google::INFO, "mylog");
    LOG(INFO) << "INFO TR";
    LOG(WARNING) << "WARNING Xiao";
    LOG(ERROR) << "ERROR For";
    return 0;
}
