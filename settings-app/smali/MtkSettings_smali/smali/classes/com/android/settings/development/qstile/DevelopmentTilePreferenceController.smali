.class public Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "DevelopmentTilePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;
    }
.end annotation


# instance fields
.field private final mOnChangeHandler:Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;

    invoke-direct {v0, p1}, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mOnChangeHandler:Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 49
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 7

    .line 63
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 64
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.quicksettings.action.QS_TILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x200

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 69
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 70
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 71
    iget-object v3, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    .line 73
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    if-nez v3, :cond_0

    iget-boolean v3, v2, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    nop

    .line 77
    :cond_1
    :goto_1
    new-instance v3, Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {v3, v0}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 78
    iget-object v5, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    iget v5, v2, Landroid/content/pm/ServiceInfo;->icon:I

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SwitchPreference;->setIcon(I)V

    .line 80
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 82
    iget-object v2, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mOnChangeHandler:Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 53
    const/4 v0, 0x1

    return v0
.end method
