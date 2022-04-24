#include "mainwindow.h"
#include <QQuickWidget>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent)
{
    QQuickWindow::setGraphicsApi(QSGRendererInterface::OpenGL);

    this->setFixedSize(640,480);
    this->setWindowTitle("The Little Book of Git");

    QQuickWidget *view = new QQuickWidget;
    view->setSource(QUrl(QStringLiteral("qrc:/FrontPage.qml")));
    view->show();

}

