.class public Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "EncryptionInterstitial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/EncryptionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityWarningDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;
    .locals 3

    .line 221
    new-instance v0, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;-><init>()V

    .line 222
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 223
    const-string v2, "extra_password_quality"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    invoke-virtual {v0, v1}, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 225
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 273
    const/16 v0, 0x245

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 278
    nop

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;

    .line 280
    if-eqz p1, :cond_1

    .line 281
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 282
    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->access$100(Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;Z)V

    .line 283
    invoke-virtual {p1}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->startLockIntent()V

    goto :goto_0

    .line 284
    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 285
    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->access$100(Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;Z)V

    .line 288
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_password_quality"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/high16 v0, 0x10000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x20000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x30000

    if-eq p1, v0, :cond_0

    .line 243
    const p1, 0x7f1205d0    # @string/encrypt_talkback_dialog_require_password 'Require password?'

    .line 244
    const v0, 0x7f1205cd    # @string/encrypt_talkback_dialog_message_password 'When you enter your password to start this device, accessibility services like %1$s won’t yet be ava ...'

    goto :goto_0

    .line 239
    :cond_0
    const p1, 0x7f1205d2    # @string/encrypt_talkback_dialog_require_pin 'Require PIN?'

    .line 240
    const v0, 0x7f1205cf    # @string/encrypt_talkback_dialog_message_pin 'When you enter your PIN to start this device, accessibility services like %1$s won’t yet be availabl ...'

    .line 241
    goto :goto_0

    .line 234
    :cond_1
    const p1, 0x7f1205d1    # @string/encrypt_talkback_dialog_require_pattern 'Require pattern?'

    .line 235
    const v0, 0x7f1205ce    # @string/encrypt_talkback_dialog_message_pattern 'When you enter your pattern to start this device, accessibility services like %1$s won’t yet be avai ...'

    .line 236
    nop

    .line 249
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 250
    nop

    .line 251
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    const/4 v3, -0x1

    .line 252
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v2

    .line 255
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 257
    const-string v2, ""

    goto :goto_1

    .line 259
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 260
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 262
    :goto_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 263
    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v4

    .line 264
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 265
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a    # @android:string/ok

    .line 266
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000    # @android:string/cancel

    .line 267
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 268
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 262
    return-object p1
.end method
