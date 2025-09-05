.class Lcom/android/settings/CryptKeeperConfirm$1;
.super Ljava/lang/Object;
.source "CryptKeeperConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeperConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeperConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeperConfirm;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 104
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    return-void

    .line 124
    :cond_0
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v0}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 125
    nop

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v1

    .line 125
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 128
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v1}, Lcom/android/settings/CryptKeeperConfirm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_password"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 135
    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePasswordEnabled(ZI)V

    .line 137
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v0}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/settings/CryptKeeperConfirm$Blank;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v0}, Lcom/android/settings/CryptKeeperConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 139
    iget-object v0, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v0, p1}, Lcom/android/settings/CryptKeeperConfirm;->startActivity(Landroid/content/Intent;)V

    .line 143
    :try_start_0
    const-string p1, "mount"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 144
    invoke-static {p1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object p1

    .line 145
    const-string v0, "SystemLocale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/os/storage/IStorageManager;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    goto :goto_1

    .line 146
    :catch_0
    move-exception p1

    .line 147
    const-string v0, "CryptKeeperConfirm"

    const-string v1, "Error storing locale for decryption UI"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    :goto_1
    return-void
.end method
