.class public Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeBehaviorFooterPreferenceController.java"


# instance fields
.field private final mTitleRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V
    .locals 1

    .line 36
    const-string v0, "footer_preference"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 37
    iput p3, p0, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->mTitleRes:I

    .line 38
    return-void
.end method

.method private isDeprecatedZenMode(I)Z
    .locals 0

    .line 95
    packed-switch p1, :pswitch_data_0

    .line 100
    const/4 p1, 0x0

    return p1

    .line 98
    :pswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected getFooterText()Ljava/lang/String;
    .locals 6

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->getZenMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->isDeprecatedZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 61
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f121152    # @string/zen_mode_app_set_behavior 'These settings can't be changed right now. An app (%1$s) has automatically turned on Do Not Disturb  ...'

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 62
    invoke-direct {p0, v1}, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->isDeprecatedZenMode(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 64
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 66
    sget-object v1, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->mZenModeConfigWrapper:Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    iget-object v5, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->getOwnerCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12119b    # @string/zen_mode_qs_set_behavior 'These settings can't be changed right now. Do Not Disturb was manually turned on with custom behavio ...'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    :cond_2
    :goto_0
    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 78
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-direct {p0, v5}, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->isDeprecatedZenMode(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 80
    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 81
    if-eqz v1, :cond_3

    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    .line 83
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 82
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :cond_3
    goto :goto_1

    .line 88
    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1211d6    # @string/zen_mode_unknown_app_set_behavior 'These settings can't be changed right now. An app has automatically turned on Do Not Disturb with cu ...'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 90
    :cond_5
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->mTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "footer_preference"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->getFooterText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method
