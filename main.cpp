#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QScreen>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    // Get the primary screen size
    QScreen *screen = QGuiApplication::primaryScreen();
    QRect screenGeometry = screen->geometry();
    int width = screenGeometry.width();
    int height = screenGeometry.height();

    const int smallScreenWidth = 800; // Example threshold for small screen width
    const int mediumScreenWidth = 1200; // Example threshold for medium screen width

    QUrl url;

    if (width <= smallScreenWidth) {
        url = QUrl(QStringLiteral("qrc:/blogi/main1.qml"));

    } else if (width <= mediumScreenWidth) {
        url = QUrl(QStringLiteral("qrc:/blogi/main2.qml"));

    } else {
        url = QUrl(QStringLiteral("qrc:/blogi/main.qml"));
    }

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreated,
        &app,
        [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection);

    engine.load(url);

    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
