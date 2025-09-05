.class public Lcust/settings/gestures/TurnOverToRejectCallSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "TurnOverToRejectCallSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcust/settings/gestures/TurnOverToRejectCallSettings$1;

    invoke-direct {v0}, Lcust/settings/gestures/TurnOverToRejectCallSettings$1;-><init>()V

    sput-object v0, Lcust/settings/gestures/TurnOverToRejectCallSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 29
    const-string v0, "TurnOverToRejectCall"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 24
    const/16 v0, 0x2f0

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 34
    const v0, 0x7f1500d6    # @xml/zzz_turn_over_to_reject_call_settings 'res/xml/zzz_turn_over_to_reject_call_settings.xml'

    return v0
.end method
