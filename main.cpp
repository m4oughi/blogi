#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QScreen>
#include <QDebug>


void loadQmlBasedOnSize(QQmlApplicationEngine &engine, int width) {
    const int smallScreenWidth = 800; // Example threshold for small screen width
    const int mediumScreenWidth = 1200; // Example threshold for medium screen width

    QUrl url;
    if (width <= smallScreenWidth) {
        url = QUrl(QStringLiteral("qrc:/Theme/small.qml"));
    } else if (width <= mediumScreenWidth) {
        url = QUrl(QStringLiteral("qrc:/Theme/medium.qml"));
    } else {
        url = QUrl(QStringLiteral("qrc:/blogi/main.qml"));
    }

    engine.load(url);
    if (engine.rootObjects().isEmpty()) {
        QCoreApplication::exit(-1);
    }
}




int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    // Get the primary screen size
    QScreen *screen = QGuiApplication::primaryScreen();
    QRect screenGeometry = screen->geometry();
    int width = screenGeometry.width();
    //int height = screenGeometry.height();

    loadQmlBasedOnSize(engine, width);




    // Connect to window size change signals
    QObject::connect(screen, &QScreen::geometryChanged, &engine, [&](const QRect &geometry) {
        int newWidth = geometry.width();
        loadQmlBasedOnSize(engine, newWidth);
    });



    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
