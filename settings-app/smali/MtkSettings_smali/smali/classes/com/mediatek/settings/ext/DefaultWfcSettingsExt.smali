.class public Lcom/mediatek/settings/ext/DefaultWfcSettingsExt;
.super Ljava/lang/Object;
.source "DefaultWfcSettingsExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IWfcSettingsExt;


# static fields
.field public static final CONFIG_CHANGE:I = 0x4

.field public static final CREATE:I = 0x2

.field public static final DESTROY:I = 0x3

.field public static final PAUSE:I = 0x1

.field public static final RESUME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DefaultWfcSettingsExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getWfcModeSummary(Landroid/content/Context;I)I
    .locals 2

    .line 112
    nop

    .line 113
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    packed-switch p2, :pswitch_data_0

    .line 125
    const-string p1, "DefaultWfcSettingsExt"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected WFC mode value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :pswitch_0
    const p1, 0x1041183

    .line 123
    goto :goto_1

    .line 119
    :pswitch_1
    const p1, 0x1041181

    .line 120
    goto :goto_1

    .line 116
    :pswitch_2
    const p1, 0x1041182

    .line 117
    goto :goto_1

    .line 128
    :cond_0
    :goto_0
    const p1, 0x10411a4

    :goto_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addOtherCustomPreference()V
    .locals 0

    .line 65
    return-void
.end method

.method public customizedWfcPreference(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0

    .line 97
    return-void
.end method

.method public getWfcSummary(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initPlugin(Landroid/support/v14/preference/PreferenceFragment;)V
    .locals 0

    .line 31
    return-void
.end method

.method public isWifiCallingProvisioned(Landroid/content/Context;I)Z
    .locals 0

    .line 107
    const-string p1, "DefaultWfcSettingsExt"

    const-string p2, "in default: isWifiCallingProvisioned"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 p1, 0x1

    return p1
.end method

.method public onWfcSettingsEvent(I)V
    .locals 0

    .line 57
    return-void
.end method

.method public onWirelessSettingsEvent(I)V
    .locals 0

    .line 49
    return-void
.end method

.method public showWfcTetheringAlertDialog(Landroid/content/Context;)Z
    .locals 0

    .line 85
    const/4 p1, 0x0

    return p1
.end method

.method public updateWfcModePreference(Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/ListPreference;ZI)V
    .locals 0

    .line 77
    return-void
.end method
