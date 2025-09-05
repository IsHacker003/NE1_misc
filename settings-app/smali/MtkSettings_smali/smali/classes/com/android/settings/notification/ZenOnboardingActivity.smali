.class public Lcom/android/settings/notification/ZenOnboardingActivity;
.super Landroid/app/Activity;
.source "ZenOnboardingActivity.java"


# static fields
.field static final ALWAYS_SHOW_THRESHOLD:J = 0x48190800L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final PREF_KEY_SUGGESTION_FIRST_DISPLAY_TIME:Ljava/lang/String; = "pref_zen_suggestion_first_display_time_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field mKeepCurrentSetting:Landroid/view/View;

.field mKeepCurrentSettingButton:Landroid/widget/RadioButton;

.field private mMetrics:Lcom/android/internal/logging/MetricsLogger;

.field mNewSetting:Landroid/view/View;

.field mNewSettingButton:Landroid/widget/RadioButton;

.field private mNm:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static isSuggestionComplete(Landroid/content/Context;)Z
    .locals 2

    .line 144
    invoke-static {p0}, Lcom/android/settings/notification/ZenOnboardingActivity;->wasZenUpdated(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 145
    return v1

    .line 148
    :cond_0
    invoke-static {p0}, Lcom/android/settings/notification/ZenOnboardingActivity;->showSuggestion(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/android/settings/notification/ZenOnboardingActivity;->withinShowTimeThreshold(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 152
    :cond_1
    return v1

    .line 149
    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static showSuggestion(Landroid/content/Context;)Z
    .locals 2

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "show_zen_settings_suggestion"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method private static wasZenUpdated(Landroid/content/Context;)Z
    .locals 3

    .line 159
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 160
    nop

    .line 161
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 160
    invoke-static {v0}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "zen_settings_updated"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "zen_settings_updated"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method private static withinShowTimeThreshold(Landroid/content/Context;)Z
    .locals 6

    .line 181
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 182
    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    .line 183
    invoke-interface {v0, p0}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 187
    const-string v2, "pref_zen_suggestion_first_display_time_ms"

    invoke-interface {p0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    nop

    .line 189
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "pref_zen_suggestion_first_display_time_ms"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 194
    move-wide v2, v0

    goto :goto_0

    .line 191
    :cond_0
    const-string v2, "pref_zen_suggestion_first_display_time_ms"

    const-wide/16 v3, -0x1

    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 194
    :goto_0
    const-wide/32 v4, 0x48190800

    add-long/2addr v2, v4

    .line 195
    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 197
    :goto_1
    const-string v0, "ZenOnboardingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "still show zen suggestion based on time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return p0
.end method


# virtual methods
.method public launchSettings(Landroid/view/View;)V
    .locals 1

    .line 116
    iget-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mMetrics:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x563

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 117
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    const v0, 0x10008000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenOnboardingActivity;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const-class p1, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenOnboardingActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenOnboardingActivity;->setNotificationManager(Landroid/app/NotificationManager;)V

    .line 61
    new-instance p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenOnboardingActivity;->setMetricsLogger(Lcom/android/internal/logging/MetricsLogger;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenOnboardingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "zen_settings_suggestion_viewed"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenOnboardingActivity;->setupUI()V

    .line 68
    return-void
.end method

.method public save(Landroid/view/View;)V
    .locals 4

    .line 123
    iget-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p1

    .line 125
    iget-object v0, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mNewSettingButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Landroid/app/NotificationManager$Policy;

    const/16 v1, 0x10

    iget v2, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    or-int/2addr v1, v2

    const/4 v2, 0x2

    iget p1, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 130
    invoke-static {}, Landroid/app/NotificationManager$Policy;->getAllSuppressedVisualEffects()I

    move-result v3

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    .line 131
    iget-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 132
    iget-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mMetrics:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x562

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 133
    goto :goto_0

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mMetrics:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x57e

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 137
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenOnboardingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "zen_settings_updated"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenOnboardingActivity;->finishAndRemoveTask()V

    .line 141
    return-void
.end method

.method protected setMetricsLogger(Lcom/android/internal/logging/MetricsLogger;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mMetrics:Lcom/android/internal/logging/MetricsLogger;

    .line 113
    return-void
.end method

.method protected setNotificationManager(Landroid/app/NotificationManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mNm:Landroid/app/NotificationManager;

    .line 108
    return-void
.end method

.method protected setupUI()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 72
    const v0, 0x7f0d01e6    # @layout/zen_onboarding 'res/layout/zen_onboarding.xml'

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenOnboardingActivity;->setContentView(I)V

    .line 74
    const v0, 0x7f0a0400    # @id/zen_onboarding_new_setting

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenOnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mNewSetting:Landroid/view/View;

    .line 75
    const v0, 0x7f0a03fc    # @id/zen_onboarding_current_setting

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenOnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mKeepCurrentSetting:Landroid/view/View;

    .line 76
    const v0, 0x7f0a0401    # @id/zen_onboarding_new_setting_button

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenOnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mNewSettingButton:Landroid/widget/RadioButton;

    .line 77
    const v0, 0x7f0a03fd    # @id/zen_onboarding_current_setting_button

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenOnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mKeepCurrentSettingButton:Landroid/widget/RadioButton;

    .line 79
    new-instance v0, Lcom/android/settings/notification/ZenOnboardingActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenOnboardingActivity$1;-><init>(Lcom/android/settings/notification/ZenOnboardingActivity;)V

    .line 87
    new-instance v1, Lcom/android/settings/notification/ZenOnboardingActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenOnboardingActivity$2;-><init>(Lcom/android/settings/notification/ZenOnboardingActivity;)V

    .line 95
    iget-object v2, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mNewSetting:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v2, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mNewSettingButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mKeepCurrentSetting:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mKeepCurrentSettingButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mKeepCurrentSettingButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mMetrics:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x564

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    .line 103
    return-void
.end method
