.class public Lcom/android/settings/system/ResetPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "ResetPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/android/settings/system/ResetPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050033    # @bool/config_show_reset_dashboard 'true'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :cond_0
    nop

    .line 40
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 41
    iget-object v2, p0, Lcom/android/settings/system/ResetPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcust/settings/CustomizedUtils;->isInDemoMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    nop

    .line 43
    const-string v0, "ResetPreference"

    const-string v2, "ResetPreference is unavailable for Demo Mode."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    move v0, v1

    :cond_1
    return v0
.end method
