.class Lcom/android/settings/security/CryptKeeperSettings$2;
.super Ljava/lang/Object;
.source "CryptKeeperSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/security/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/security/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/security/CryptKeeperSettings;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings$2;->this$0:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 94
    iget-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings$2;->this$0:Lcom/android/settings/security/CryptKeeperSettings;

    const/16 v0, 0x37

    invoke-static {p1, v0}, Lcom/android/settings/security/CryptKeeperSettings;->access$300(Lcom/android/settings/security/CryptKeeperSettings;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 96
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings$2;->this$0:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-virtual {v0}, Lcom/android/settings/security/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120438    # @string/crypt_keeper_dialog_need_password_title 'No lock screen PIN or password'

    .line 97
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120437    # @string/crypt_keeper_dialog_need_password_message 'You need to set a lock screen PIN or password before you can start encryption.'

    .line 98
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a    # @android:string/ok

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 103
    :cond_0
    return-void
.end method
