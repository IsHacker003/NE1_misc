.class public Lcom/mediatek/settings/security/DataprotectionPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "DataprotectionPreferenceController.java"


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

    .line 42
    const-string v0, "data_protection_key"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.dataprotection.ACTION_START_MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/mediatek/settings/security/DataprotectionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method
