.class public Lcom/android/settingslib/development/SystemPropPoker$PokerTask;
.super Landroid/os/AsyncTask;
.source "SystemPropPoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/development/SystemPropPoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PokerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 0

    .line 70
    invoke-static {p1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/development/SystemPropPoker$PokerTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10

    .line 75
    invoke-virtual {p0}, Lcom/android/settingslib/development/SystemPropPoker$PokerTask;->listServices()[Ljava/lang/String;

    move-result-object p1

    .line 76
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 77
    const-string p1, "SystemPropPoker"

    const-string v1, "There are no services, how odd"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-object v0

    .line 80
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 81
    invoke-virtual {p0, v4}, Lcom/android/settingslib/development/SystemPropPoker$PokerTask;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 82
    if-eqz v5, :cond_1

    .line 83
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 85
    const v7, 0x5f535052

    :try_start_0
    invoke-interface {v5, v7, v6, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_1
    goto :goto_2

    .line 88
    :catch_0
    move-exception v5

    .line 89
    const-string v7, "SystemPropPoker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Someone wrote a bad service \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' that doesn\'t like to be poked"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 86
    :catch_1
    move-exception v4

    goto :goto_1

    .line 92
    :goto_2
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 80
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    :cond_2
    return-object v0
.end method

.method listServices()[Ljava/lang/String;
    .locals 1

    .line 65
    invoke-static {}, Landroid/os/ServiceManager;->listServices()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
