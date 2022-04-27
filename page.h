#ifndef PAGE_H
#define PAGE_H

#include <QString>

class Page
{
public:
    enum PageType {
        Front,
        OS,
        Index,
        Heading,
        Intro,
        Setup,
        Commands
    };

    Page();
    Page(const QString& name, const PageType& pageType, const QString& qmlFilePath);
    QString getName() const;
    int getPageType() const;
    QString getQmlFilePath() const;
 private:
    QString m_Name;
    PageType m_PageType;
    QString m_QmlFilePath;
};

#endif // PAGE_H
