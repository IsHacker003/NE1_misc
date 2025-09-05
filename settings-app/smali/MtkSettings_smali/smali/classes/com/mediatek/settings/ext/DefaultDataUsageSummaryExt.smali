.class public Lcom/mediatek/settings/ext/DefaultDataUsageSummaryExt;
.super Ljava/lang/Object;
.source "DefaultDataUsageSummaryExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IDataUsageSummaryExt;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public customDualReceiver(Ljava/lang/String;)Z
    .locals 0

    .line 61
    const/4 p1, 0x0

    return p1
.end method

.method public customReceiver(Landroid/content/IntentFilter;)V
    .locals 0

    .line 66
    return-void
.end method

.method public customTempdata(I)Z
    .locals 0

    .line 79
    const/4 p1, 0x0

    return p1
.end method

.method public customTempdataHide(Landroid/support/v14/preference/SwitchPreference;)V
    .locals 0

    .line 84
    return-void
.end method

.method public isAllowDataDisableForOtherSubscription()Z
    .locals 1

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public isAllowDataEnable(I)Z
    .locals 0

    .line 34
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroid/content/Context;Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 47
    return-void
.end method

.method public onDisablingData(I)Z
    .locals 0

    .line 23
    const/4 p1, 0x1

    return p1
.end method

.method public setPreferenceSummary(Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 57
    return-void
.end method
