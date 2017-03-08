#include <iostream>
#include <string>
#include <map>
#include <set>

#include <librsvg/rsvg.h>

using std::cout;
using std::endl;
using std::hex;
using std::dec;

int main(int argc, const char * argv[], const char * envp[])
{
    RsvgHandle* handle;

    (void)argc;
    (void)argv;

    g_type_init();
    handle = rsvg_handle_new();
    g_object_unref(handle);

    cout << "Hello world!" << endl;
    return 0;
}
