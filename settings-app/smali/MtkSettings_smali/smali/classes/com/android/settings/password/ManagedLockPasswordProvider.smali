.class public Lcom/android/settings/password/ManagedLockPasswordProvider;
.super Ljava/lang/Object;
.source "ManagedLockPasswordProvider.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;I)Lcom/android/settings/password/ManagedLockPasswordProvider;
    .locals 0

    .line 34
    new-instance p0, Lcom/android/settings/password/ManagedLockPasswordProvider;

    invoke-direct {p0}, Lcom/android/settings/password/ManagedLockPasswordProvider;-><init>()V

    return-object p0
.end method


# virtual methods
.method createIntent(ZLjava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 65
    const/4 p1, 0x0

    return-object p1
.end method

.method getPickerOptionTitle(Z)Ljava/lang/CharSequence;
    .locals 0

    .line 55
    const-string p1, ""

    return-object p1
.end method

.method isManagedPasswordChoosable()Z
    .locals 1

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method isSettingManagedPasswordSupported()Z
    .locals 1

    .line 43
    const/4 v0, 0x0

    return v0
.end method
