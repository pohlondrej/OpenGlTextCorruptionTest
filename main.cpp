#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QFontDatabase>
#include <QtDebug>
#include <QResource>
#include <QQuickView>
#include <vector>
#include <QString>
#include <QDir>
#include <QDirIterator>

std::vector<QString> GetFontPaths(QString family)
{
	std::vector<QString> fonts;
	QDirIterator it(":font/" + family.remove(' '), QDir::Files|QDir::NoDotAndDotDot);
	while (it.hasNext())
	{
		fonts.push_back(it.next());
	}
	qDebug() << fonts.size() << "loaded.";
	return fonts;
}

int main(int argc, char *argv[])
{
	QGuiApplication app(argc, argv);

	QString fontPath = QCoreApplication::applicationDirPath() + "/fonts/Roboto.rcc";
	qDebug() << "Loading font family from" << fontPath;
	if (!QResource::registerResource(fontPath))
	{
		qDebug() << "Loading of font Roboto failed.";
	}

	for (const QString &font : GetFontPaths("Roboto"))
	{
		qDebug() << "Loading font" << font;
		QFontDatabase::addApplicationFont(font);
	}

	qDebug() << "BANANA1";
	QGuiApplication::setFont(QFont("Roboto"));
	qDebug() << "BANANA2";

	QQmlApplicationEngine engine;
	engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
	if (engine.rootObjects().isEmpty())
		return -1;

	return app.exec();
}
