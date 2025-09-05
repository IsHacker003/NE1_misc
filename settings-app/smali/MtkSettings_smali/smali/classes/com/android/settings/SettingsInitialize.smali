.class public Lcom/android/settings/SettingsInitialize;
.super Landroid/content/BroadcastReceiver;
.source "SettingsInitialize.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private managedProfileSetup(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/pm/UserInfo;)V
    .locals 6

    .line 80
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 83
    :cond_0
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ". Setting up intent forwarding for managed profile."

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget p3, p4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->clearCrossProfileIntentFilters(I)V

    .line 89
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 90
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const/16 v0, 0x2c1

    invoke-virtual {p2, p3, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p3

    .line 96
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 97
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v0, :cond_2

    .line 98
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 99
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    .line 101
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.android.settings.PRIMARY_PROFILE_CONTROLLED"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 103
    if-eqz v4, :cond_1

    .line 104
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    iget v4, p4, Landroid/content/pm/UserInfo;->id:I

    iget v5, p4, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {p2, v3, v4, v5, v2}, Landroid/content/pm/PackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;III)V

    .line 97
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_2
    new-instance p3, Landroid/content/ComponentName;

    const-class p4, Lcom/android/settings/Settings;

    invoke-direct {p3, p1, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    const/4 p4, 0x1

    invoke-virtual {p2, p3, v2, p4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 115
    new-instance p3, Landroid/content/ComponentName;

    const-class v0, Lcom/android/settings/shortcut/CreateShortcut;

    invoke-direct {p3, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    invoke-virtual {p2, p3, v2, p4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 118
    return-void

    .line 81
    :cond_3
    :goto_1
    return-void
.end method

.method private webviewSettingSetup(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/UserInfo;)V
    .locals 2

    .line 122
    if-nez p3, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    new-instance p1, Landroid/content/ComponentName;

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.WebViewImplementation"

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    nop

    .line 128
    invoke-virtual {p3}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 129
    nop

    .line 130
    move p3, v0

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    .line 127
    :goto_0
    invoke-virtual {p2, p1, p3, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 132
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 62
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 63
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 65
    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/settings/SettingsInitialize;->managedProfileSetup(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/pm/UserInfo;)V

    .line 66
    invoke-direct {p0, p1, v1, v0}, Lcom/android/settings/SettingsInitialize;->webviewSettingSetup(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/UserInfo;)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsInitialize;->refreshExistingShortcuts(Landroid/content/Context;)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "wifi_hotspot_max_client_num"

    const/4 v1, -0x1

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v1, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "wifi_hotspot_max_client_num"

    const/4 v0, 0x6

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 76
    :cond_0
    return-void
.end method

.method refreshExistingShortcuts(Landroid/content/Context;)V
    .locals 6

    .line 137
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 138
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->getPinnedShortcuts()Ljava/util/List;

    move-result-object v1

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 141
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 142
    const/high16 v5, 0x14000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    new-instance v5, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, p1, v3}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v5, v4}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v3

    .line 145
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    .line 146
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/pm/ShortcutManager;->updateShortcuts(Ljava/util/List;)Z

    .line 149
    return-void
.end method
