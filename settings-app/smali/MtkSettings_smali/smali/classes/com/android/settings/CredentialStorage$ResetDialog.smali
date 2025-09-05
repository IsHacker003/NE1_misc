.class Lcom/android/settings/CredentialStorage$ResetDialog;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetDialog"
.end annotation


# instance fields
.field private mResetConfirmed:Z

.field final synthetic this$0:Lcom/android/settings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settings/CredentialStorage;)V
    .locals 1

    .line 376
    iput-object p1, p0, Lcom/android/settings/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    invoke-static {}, Lcom/android/settings/CredentialStorage;->access$200()Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 379
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x1040014    # @android:string/dialog_alert_title

    .line 380
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120429    # @string/credentials_reset_hint 'Remove all the contents?'

    .line 381
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a    # @android:string/ok

    .line 382
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000    # @android:string/cancel

    .line 383
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 384
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 385
    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->access$202(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 386
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 387
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 390
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$1;)V
    .locals 0

    .line 372
    invoke-direct {p0, p1}, Lcom/android/settings/CredentialStorage$ResetDialog;-><init>(Lcom/android/settings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 394
    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    .line 395
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 400
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->access$202(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 401
    iget-boolean p1, p0, Lcom/android/settings/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    if-eqz p1, :cond_0

    .line 402
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    .line 403
    iget-object p1, p0, Lcom/android/settings/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings/CredentialStorage;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/settings/CredentialStorage;->access$300(Lcom/android/settings/CredentialStorage;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 405
    return-void

    .line 408
    :cond_0
    iget-object p1, p0, Lcom/android/settings/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-virtual {p1}, Lcom/android/settings/CredentialStorage;->finish()V

    .line 409
    return-void
.end method
