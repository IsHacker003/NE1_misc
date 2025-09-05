.class Lcom/mediatek/nfc/NfcSettings$3;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "NfcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/nfc/NfcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 390
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 394
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 395
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 396
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_NFC_ADDON_SUPPORT:Z

    if-eqz v1, :cond_0

    .line 398
    const-string v1, "@M_NfcSettings"

    const-string v2, "SearchIndexProvider add NFC"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 401
    const p1, 0x7f12095a    # @string/nfc_quick_toggle_title 'NFC'

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 402
    nop

    .line 403
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 404
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 405
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    goto :goto_0

    .line 407
    :cond_0
    const-string p1, "@M_NfcSettings"

    const-string v0, "NfcAdapter is null or it is default NFC"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :goto_0
    return-object p2
.end method
