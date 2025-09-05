.class public Lcom/android/settings/deviceinfo/ManualPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ManualPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "manual"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/android/settings/deviceinfo/ManualPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050028    # @bool/config_show_manual 'false'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
