/****************************************************************************
** Meta object code from reading C++ file 'main_window.hpp'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/gui/include/gui/main_window.hpp"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'main_window.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_gui__MainWindow[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      17,   16,   16,   16, 0x0a,
      37,   16,   16,   16, 0x0a,
      48,   16,   16,   16, 0x0a,
      63,   59,   16,   16, 0x0a,
     123,  101,   16,   16, 0x0a,
     236,  200,   16,   16, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_gui__MainWindow[] = {
    "gui::MainWindow\0\0updateLoggingView()\0"
    "sendText()\0sendFile()\0msg\0"
    "writeFile(chat_messages::BinaryFile&)\0"
    "msg,frame,sender,text\0"
    "feed_msg_pkg_text(chat_messages::BinaryFile&,int&,std::string&,std::st"
    "ring&)\0"
    "msg,frame,sender,data_name,raw_data\0"
    "feed_msg_pkg_file(chat_messages::BinaryFile&,int&,std::string&,std::st"
    "ring&,std::vector<signed char>&)\0"
};

void gui::MainWindow::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        MainWindow *_t = static_cast<MainWindow *>(_o);
        switch (_id) {
        case 0: _t->updateLoggingView(); break;
        case 1: _t->sendText(); break;
        case 2: _t->sendFile(); break;
        case 3: _t->writeFile((*reinterpret_cast< chat_messages::BinaryFile(*)>(_a[1]))); break;
        case 4: _t->feed_msg_pkg_text((*reinterpret_cast< chat_messages::BinaryFile(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< std::string(*)>(_a[3])),(*reinterpret_cast< std::string(*)>(_a[4]))); break;
        case 5: _t->feed_msg_pkg_file((*reinterpret_cast< chat_messages::BinaryFile(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< std::string(*)>(_a[3])),(*reinterpret_cast< std::string(*)>(_a[4])),(*reinterpret_cast< std::vector<signed char>(*)>(_a[5]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData gui::MainWindow::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject gui::MainWindow::staticMetaObject = {
    { &QMainWindow::staticMetaObject, qt_meta_stringdata_gui__MainWindow,
      qt_meta_data_gui__MainWindow, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &gui::MainWindow::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *gui::MainWindow::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *gui::MainWindow::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_gui__MainWindow))
        return static_cast<void*>(const_cast< MainWindow*>(this));
    return QMainWindow::qt_metacast(_clname);
}

int gui::MainWindow::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
