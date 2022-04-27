#ifndef BOOK_H
#define BOOK_H

#include <QAbstractItemModel>
#include "page.h"

class Book : public QAbstractItemModel
{
Q_OBJECT
 public :
    Book(QObject * parent = 0);

    int rowCount(const QModelIndex& parent = QModelIndex()) const override;
    int columnCount(const QModelIndex& parent = QModelIndex()) const override;
    QVariant data(const QModelIndex &index, int role) const override;
    QModelIndex index(int row, int column, const QModelIndex &parent = QModelIndex()) const override;
    QModelIndex parent(const QModelIndex &index) const override;
    void populate();

    QString getNextPageQmlFilePath() const;
    QString getHomePageQmlFilePath() const;
    bool isLastPage() const;
 private:
   QList<Page> m_Pages;
   mutable int m_CurrentPage;
};

#endif // BOOK_H
