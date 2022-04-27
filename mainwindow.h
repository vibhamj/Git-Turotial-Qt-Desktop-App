#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include "book.h"

class MainWindow : public QMainWindow {
    Q_OBJECT
public:
    explicit MainWindow(QWidget *parent = 0);
    Q_INVOKABLE QString getNextPageQmlFilePath() const;
    Q_INVOKABLE QString getHomePageQmlFilePath() const;
    Q_INVOKABLE bool isLastPage() const;
    ~MainWindow();

private:
    Book* m_Book;

public slots:

};


#endif // MAINWINDOW_H
