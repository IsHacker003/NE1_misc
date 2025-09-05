.class public Lcom/android/settings/Settings$ApnSettingsActivity;
.super Lcom/android/settings/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApnSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/Settings$ApnSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 130
    const v1, 0x7f0a0201    # @id/main_content

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/ApnSettings;

    .line 131
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, p1}, Lcom/android/settings/network/ApnSettings;->onIntentUpdate(Landroid/content/Intent;)V

    .line 134
    :cond_0
    return-void
.end method
