#include "book.h" 
#include <QQuickWidget>
#include <QQmlContext>

Book::Book(QObject * parent) :
    QAbstractItemModel(nullptr),
    m_Pages(QList<Page>()),
    m_CurrentPage(-1)

{
    populate();
}

void Book::populate()
{
    beginResetModel();
    m_Pages.clear();
    m_Pages.append(Page("Introduction", Page::PageType::Heading, "IntroPage.qml"));
    endResetModel();
}

QString Book::getNextPageQmlFilePath() const
{
    m_CurrentPage++;
    if(m_CurrentPage <= m_Pages.count())
        return m_Pages[m_CurrentPage].getQmlFilePath();
    else {
        m_CurrentPage = 0;
        return QString();
    }
}

QString Book::getHomePageQmlFilePath() const
{
    m_CurrentPage = -1;
    return getNextPageQmlFilePath();
}

bool Book::isLastPage() const
{
    return m_CurrentPage == m_Pages.count() - 1;
}


int Book::rowCount(const QModelIndex& parent) const
{
  return m_Pages.size();
}
int Book::columnCount(const QModelIndex& parent) const
{
  return 3;
}

QVariant Book::data(const QModelIndex &index, int role) const
  {
   if (!index.isValid())
       return QVariant();
   if ( role == Qt::DisplayRole)
   {
       if ( index.column() == 0)
           return m_Pages[index.row()].getName();
       if ( index.column() == 1)
           return m_Pages[index.row()].getPageType();
       if ( index.column() == 2)
           return m_Pages[index.row()].getQmlFilePath();
   }

   return QVariant();
}

QModelIndex Book::index(int row, int column, const QModelIndex &parent) const
{
    return createIndex(row, column);
}

QModelIndex Book::parent(const QModelIndex &index) const
{
    return createIndex(index.row(), 0);
}


