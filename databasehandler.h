#ifndef DATABASEHANDLER_H
#define DATABASEHANDLER_H

#include <QObject>

class Databasehandler : public QObject
{
    Q_OBJECT
public:
    explicit Databasehandler(QObject *parent = nullptr);

signals:
};

#endif // DATABASEHANDLER_H
