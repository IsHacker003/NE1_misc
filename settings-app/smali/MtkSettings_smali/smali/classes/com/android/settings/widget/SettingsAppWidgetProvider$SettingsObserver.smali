.class Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 929
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 930
    iput-object p2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;->mContext:Landroid/content/Context;

    .line 931
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 950
    iget-object p1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 951
    return-void
.end method

.method startObserving()V
    .locals 3

    .line 934
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 936
    const-string v1, "screen_brightness"

    .line 937
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 936
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 938
    const-string v1, "screen_brightness_mode"

    .line 939
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 938
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 940
    const-string v1, "screen_auto_brightness_adj"

    .line 941
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 940
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 942
    return-void
.end method

.method stopObserving()V
    .locals 1

    .line 945
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 946
    return-void
.end method
