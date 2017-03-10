#include <iostream>
#include <string>
#include <map>
#include <set>

#include <librsvg/rsvg.h>
#include <cairo/cairo.h>

#include <QApplication>
#include <QPushButton>

using std::cout;
using std::endl;
using std::hex;
using std::dec;

int main(int argc, char* const argv[], char* const envp[])
{
    RsvgHandle* handle;

    (void)argc;
    (void)argv;

    g_type_init();
    handle = rsvg_handle_new();
    g_object_unref(handle);


    cout << "cairo_version_string" << cairo_version_string() << endl;

    cout << "Hello world!" << endl;

    QCoreApplication a(argc, const_cast<char**>(argv));

    QPushButton button ("Hello world !");
    button.show();

    return a.exec();

    return 0;
}
