.class public abstract Lcom/android/settingslib/core/AbstractPreferenceController;
.super Ljava/lang/Object;
.source "AbstractPreferenceController.java"


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 26
    instance-of v1, p0, Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 28
    move-object v0, p0

    check-cast v0, Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public abstract getPreferenceKey()Ljava/lang/String;
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    .line 71
    const/4 p1, 0x0

    return p1
.end method

.method public abstract isAvailable()Z
.end method

.method protected refreshSummary(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 47
    if-nez p1, :cond_0

    .line 48
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 51
    if-nez v0, :cond_1

    .line 54
    return-void

    .line 56
    :cond_1
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method protected final setVisible(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Z)V
    .locals 0

    .line 83
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 84
    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1, p3}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 87
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroid/support/v7/preference/Preference;)V

    .line 41
    return-void
.end method
