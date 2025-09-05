.class Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/network/ApnSettings;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/network/ApnSettings;Lcom/android/settings/network/ApnSettings$1;)V
    .locals 0

    .line 657
    invoke-direct {p0, p1}, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/network/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 660
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 662
    :cond_0
    const-string p1, "ApnSettings"

    const-string v0, "restore APN complete~~"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-virtual {p1}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 664
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 665
    invoke-static {v0}, Lcom/android/settings/network/ApnSettings;->access$102(Z)Z

    .line 666
    return-void

    .line 668
    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-virtual {v1}, Lcom/android/settings/network/ApnSettings;->fillList()V

    .line 670
    nop

    .line 671
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, -0x1

    .line 670
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 673
    move v1, v2

    goto :goto_0

    .line 670
    :cond_2
    nop

    .line 673
    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-virtual {v3}, Lcom/android/settings/network/ApnSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    xor-int/2addr v1, v2

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 674
    invoke-static {v0}, Lcom/android/settings/network/ApnSettings;->access$102(Z)Z

    .line 675
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    const/16 v3, 0x3e9

    invoke-static {v1, v3}, Lcom/android/settings/network/ApnSettings;->access$500(Lcom/android/settings/network/ApnSettings;I)V

    .line 676
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    .line 678
    invoke-virtual {v1}, Lcom/android/settings/network/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f120b3a    # @string/restore_default_apn_completed 'Reset default APN settings completed.'

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 676
    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 680
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 681
    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p1, v0}, Lcom/android/settings/network/ApnSettings;->access$602(Lcom/android/settings/network/ApnSettings;Z)Z

    .line 682
    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/ApnSettings;->access$700(Lcom/android/settings/network/ApnSettings;)V

    .line 685
    :goto_1
    return-void
.end method
