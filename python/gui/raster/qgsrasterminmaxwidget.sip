class QgsRasterMinMaxWidget: QWidget
{
%TypeHeaderCode
#include <qgsrasterminmaxwidget.h>
%End
  public:
    QgsRasterMinMaxWidget( QgsRasterLayer* theLayer, QWidget *parent /TransferThis/ = 0 );
    ~QgsRasterMinMaxWidget();

    void setExtent( const QgsRectangle & theExtent );

    void setBands( const QList<int> & theBands );
    /** Return the extent selected by the user.
        Either an empty extent for 'full' or the current visible extent. */
    QgsRectangle extent();
    /** Return the selected sample size. */
    int sampleSize();

    // Load programmaticaly with current values
    void load();

  signals:
    void load( int theBandNo, double theMin, double theMax, int origin );
};
