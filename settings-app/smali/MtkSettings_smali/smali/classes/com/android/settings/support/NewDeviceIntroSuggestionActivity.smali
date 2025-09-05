.class public Lcom/android/settings/support/NewDeviceIntroSuggestionActivity;
.super Landroid/app/Activity;
.source "NewDeviceIntroSuggestionActivity.java"


# static fields
.field static final PERMANENT_DISMISS_THRESHOLD:J = 0x48190800L

.field static final PREF_KEY_SUGGGESTION_COMPLETE:Ljava/lang/String; = "pref_new_device_intro_suggestion_complete"

.field static final PREF_KEY_SUGGGESTION_FIRST_DISPLAY_TIME:Ljava/lang/String; = "pref_new_device_intro_suggestion_first_display_time_ms"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static canOpenUrlInBrowser(Landroid/content/Context;)Z
    .locals 2

    .line 106
    invoke-static {p0}, Lcom/android/settings/support/NewDeviceIntroSuggestionActivity;->getLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 107
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 109
    return v1

    .line 112
    :cond_0
    nop

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 114
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method static getLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 126
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 127
    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SupportFeatureProvider;

    move-result-object v0

    .line 128
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 129
    return-object v1

    .line 131
    :cond_0
    invoke-interface {v0, p0}, Lcom/android/settings/overlay/SupportFeatureProvider;->getNewDeviceIntroUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 132
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    return-object v1

    .line 135
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.BROWSABLE"

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 138
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    .line 135
    return-object p0
.end method

.method private static hasLaunchedBefore(Landroid/content/Context;)Z
    .locals 2

    .line 118
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    .line 120
    invoke-interface {v0, p0}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 121
    const-string v0, "pref_new_device_intro_suggestion_complete"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static isExpired(Landroid/content/Context;)Z
    .locals 6

    .line 84
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    .line 86
    invoke-interface {v0, p0}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 90
    const-string v2, "pref_new_device_intro_suggestion_first_display_time_ms"

    invoke-interface {p0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    nop

    .line 92
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "pref_new_device_intro_suggestion_first_display_time_ms"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    move-wide v2, v0

    goto :goto_0

    .line 94
    :cond_0
    const-string v2, "pref_new_device_intro_suggestion_first_display_time_ms"

    const-wide/16 v3, -0x1

    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 97
    :goto_0
    const-wide/32 v4, 0x48190800

    add-long/2addr v2, v4

    .line 99
    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 101
    :goto_1
    const-string v0, "NewDeviceIntroSugg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is suggestion expired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return p0
.end method

.method public static isSuggestionComplete(Landroid/content/Context;)Z
    .locals 1

    .line 71
    invoke-static {p0}, Lcom/android/settings/support/NewDeviceIntroSuggestionActivity;->isTipsInstalledAsSystemApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    invoke-static {p0}, Lcom/android/settings/support/NewDeviceIntroSuggestionActivity;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-static {p0}, Lcom/android/settings/support/NewDeviceIntroSuggestionActivity;->isExpired(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    invoke-static {p0}, Lcom/android/settings/support/NewDeviceIntroSuggestionActivity;->hasLaunchedBefore(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    invoke-static {p0}, Lcom/android/settings/support/NewDeviceIntroSuggestionActivity;->canOpenUrlInBrowser(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 71
    :goto_1
    return p0
.end method

.method private static isSupported(Landroid/content/Context;)Z
    .locals 1

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 80
    const v0, 0x7f050012    # @bool/config_new_device_intro_suggestion_supported 'false'

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 79
    return p0
.end method

.method private static isTipsInstalledAsSystemApp(Landroid/content/Context;)Z
    .locals 3

    .line 146
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.google.android.apps.tips"

    const/high16 v2, 0x100000

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 149
    :catch_0
    move-exception p0

    .line 150
    const-string v1, "NewDeviceIntroSugg"

    const-string v2, "Cannot find the package: com.google.android.apps.tips"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-static {p0}, Lcom/android/settings/support/NewDeviceIntroSuggestionActivity;->getLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 59
    if-eqz p1, :cond_0

    .line 60
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    .line 62
    invoke-interface {v0, p0}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_new_device_intro_suggestion_complete"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/settings/support/NewDeviceIntroSuggestionActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/support/NewDeviceIntroSuggestionActivity;->finish()V

    .line 67
    return-void
.end method
