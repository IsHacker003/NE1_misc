.class Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "BluetoothDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 124
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 125
    const-string v1, "bluetooth"

    .line 126
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    .line 127
    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 129
    if-eqz p1, :cond_0

    .line 130
    const/4 p1, 0x0

    goto :goto_0

    .line 131
    :cond_0
    const/4 p1, 0x2

    .line 132
    :goto_0
    if-eqz p1, :cond_1

    .line 133
    const-string p1, "bluetooth_switchbar_screen"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_1
    return-object v0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 113
    const v1, 0x7f12032b    # @string/bluetooth_settings_title 'Bluetooth'

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 114
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 115
    const v1, 0x7f12078c    # @string/keywords_bluetooth_settings 'connected, device, headphones, headset, speaker, wireless, pair, earbuds, music, media'

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 116
    const-string p1, "bluetooth_switchbar_screen"

    iput-object p1, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 117
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    return-object p2
.end method
