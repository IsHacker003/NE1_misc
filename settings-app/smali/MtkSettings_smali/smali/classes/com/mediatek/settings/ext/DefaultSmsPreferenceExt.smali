.class public Lcom/mediatek/settings/ext/DefaultSmsPreferenceExt;
.super Ljava/lang/Object;
.source "DefaultSmsPreferenceExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/ISmsPreferenceExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canSetSummary()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public createBroadcastReceiver(Landroid/content/Context;Landroid/support/v7/preference/ListPreference;)V
    .locals 0

    .line 12
    return-void
.end method

.method public deregisterBroadcastReceiver(Landroid/content/Context;)V
    .locals 0

    .line 16
    return-void
.end method

.method public getBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 14
    const/4 p1, 0x1

    return p1
.end method
