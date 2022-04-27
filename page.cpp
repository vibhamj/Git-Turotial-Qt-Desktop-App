#include "page.h"

Page::Page(const QString& name, const PageType& pageType, const QString& qmlFilePath) :
    m_Name(name),
    m_PageType(pageType),
    m_QmlFilePath(qmlFilePath)
{

}

QString Page::getName() const
{
    return m_Name;
}

int Page::getPageType() const
{
    return (int)m_PageType;
}

QString Page::getQmlFilePath() const
{
    return m_QmlFilePath;
}
