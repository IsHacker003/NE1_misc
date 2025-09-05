.class Lcom/android/settings/support/SupportDashboardActivity$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SupportDashboardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/support/SupportDashboardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
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

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f050046    # @bool/config_support_enabled 'false'

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 83
    const-string p1, "support_dashboard_activity"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    return-object v0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 2
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

    .line 62
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 66
    const v1, 0x7f120a13    # @string/page_tab_title_support 'Tips & support'

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 67
    const v1, 0x7f120c29    # @string/settings_label 'Settings'

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 68
    const v1, 0x7f120dad    # @string/support_summary 'Help articles, phone & chat, getting started'

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 69
    const v1, 0x7f08011b    # @drawable/ic_homepage_support 'res/drawable/ic_homepage_support.xml'

    iput v1, v0, Lcom/android/settings/search/SearchIndexableRaw;->iconResId:I

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    .line 71
    const-class p1, Lcom/android/settings/support/SupportDashboardActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    .line 72
    const-string p1, "android.intent.action.MAIN"

    iput-object p1, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    .line 73
    const-string p1, "support_dashboard_activity"

    iput-object p1, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 74
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-object p2
.end method
