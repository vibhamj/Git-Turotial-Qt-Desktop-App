#include "mainwindow.h"
#include <QQuickWidget>
#include <QQmlContext>
#include "book.h"

MainWindow::MainWindow(QWidget *parent) :
    m_Book(nullptr),
    QMainWindow(parent)
{
    QQuickWindow::setGraphicsApi(QSGRendererInterface::OpenGL);

    this->setFixedSize(640,480);
    this->setWindowTitle("The Little Book of Git");

    QQuickWidget *view = new QQuickWidget;
    view->rootContext()->setContextProperty("mainWindow", this);
    view->setSource(QUrl(QStringLiteral("qrc:/Page.qml")));
    view->show();

    m_Book = new Book(nullptr);

}

QString MainWindow::getNextPageQmlFilePath() const
{
    return m_Book->getNextPageQmlFilePath();
}

QString MainWindow::getHomePageQmlFilePath() const
{
    return m_Book->getHomePageQmlFilePath();
}

bool MainWindow::isLastPage() const
{
    return m_Book->isLastPage();
}

MainWindow::~MainWindow()
{
    delete m_Book;
}
