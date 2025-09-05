.class Lcom/android/settings/network/ApnEditor$ApnData;
.super Ljava/lang/Object;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApnData"
.end annotation


# instance fields
.field mData:[Ljava/lang/Object;

.field mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1403
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    .line 1404
    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 2

    .line 1406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1407
    iput-object p1, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mUri:Landroid/net/Uri;

    .line 1408
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    .line 1409
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1410
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1424
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    goto :goto_1

    .line 1421
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    aput-object v1, v0, p1

    .line 1422
    goto :goto_1

    .line 1418
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 1419
    goto :goto_1

    .line 1412
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, p1

    .line 1413
    goto :goto_1

    .line 1415
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    .line 1416
    nop

    .line 1409
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1427
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method getInteger(I)Ljava/lang/Integer;
    .locals 1

    .line 1438
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1442
    invoke-virtual {p0, p1}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1443
    if-nez p1, :cond_0

    move-object p1, p2

    :cond_0
    return-object p1
.end method

.method getString(I)Ljava/lang/String;
    .locals 1

    .line 1447
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method getUri()Landroid/net/Uri;
    .locals 1

    .line 1430
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mUri:Landroid/net/Uri;

    return-object v0
.end method
