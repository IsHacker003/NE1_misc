.class public Lcom/android/settings/widget/AppSwitchPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "AppSwitchPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 31
    const p1, 0x7f0d00df    # @layout/preference_app 'res/layout/preference_app.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/AppSwitchPreference;->setLayoutResource(I)V

    .line 32
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 38
    const v0, 0x7f0a034d    # @id/summary_container

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/widget/AppSwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 40
    return-void
.end method
