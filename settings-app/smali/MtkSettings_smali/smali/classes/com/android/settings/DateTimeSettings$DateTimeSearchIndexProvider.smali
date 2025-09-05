.class Lcom/android/settings/DateTimeSettings$DateTimeSearchIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateTimeSearchIndexProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 232
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/DateTimeSettings$1;)V
    .locals 0

    .line 232
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings$DateTimeSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 237
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 239
    invoke-static {p1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    return-object p2

    .line 243
    :cond_0
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 244
    const p1, 0x7f15003f    # @xml/date_time_prefs 'res/xml/date_time_prefs.xml'

    iput p1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 245
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    return-object p2
.end method
