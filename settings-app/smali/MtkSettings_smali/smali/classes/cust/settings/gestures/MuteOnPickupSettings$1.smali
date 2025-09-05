.class Lcust/settings/gestures/MuteOnPickupSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "MuteOnPickupSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcust/settings/gestures/MuteOnPickupSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

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

    .line 42
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 43
    const p1, 0x7f1500d4    # @xml/zzz_mute_on_pickup_settings 'res/xml/zzz_mute_on_pickup_settings.xml'

    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 44
    const/4 p1, 0x1

    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
