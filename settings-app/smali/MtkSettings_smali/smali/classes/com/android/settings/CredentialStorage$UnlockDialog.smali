.class Lcom/android/settings/CredentialStorage$UnlockDialog;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockDialog"
.end annotation


# instance fields
.field private final mButton:Landroid/widget/Button;

.field private final mError:Landroid/widget/TextView;

.field private final mOldPassword:Landroid/widget/TextView;

.field private mUnlockConfirmed:Z

.field final synthetic this$0:Lcom/android/settings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settings/CredentialStorage;)V
    .locals 6

    .line 579
    iput-object p1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    const v0, 0x7f0d0062    # @layout/credentials_dialog 'res/layout/credentials_dialog.xml'

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 583
    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->access$600(Lcom/android/settings/CredentialStorage;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 584
    invoke-virtual {p1}, Lcom/android/settings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f120430    # @string/credentials_unlock_hint 'Type the password for credential storage.'

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 585
    :cond_0
    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->access$600(Lcom/android/settings/CredentialStorage;)I

    move-result v1

    const/4 v4, 0x3

    if-le v1, v4, :cond_1

    .line 586
    invoke-virtual {p1}, Lcom/android/settings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f120431    # @string/credentials_wrong_password 'Incorrect password.'

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 587
    :cond_1
    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->access$600(Lcom/android/settings/CredentialStorage;)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 588
    invoke-virtual {p1}, Lcom/android/settings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f12042b    # @string/credentials_reset_warning 'Incorrect password. You have one more chance before credential storage is erased.'

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 590
    :cond_2
    const v1, 0x7f12042c    # @string/credentials_reset_warning_plural 'Incorrect password. You have %1$d more chances before credential storage is erased.'

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->access$600(Lcom/android/settings/CredentialStorage;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p1, v1, v4}, Lcom/android/settings/CredentialStorage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 593
    :goto_0
    const v4, 0x7f0a018e    # @id/hint

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    const v1, 0x7f0a0240    # @id/old_password

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    .line 595
    iget-object v1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 596
    iget-object v1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 597
    const v1, 0x7f0a0143    # @id/error

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mError:Landroid/widget/TextView;

    .line 599
    invoke-static {}, Lcom/android/settings/CredentialStorage;->access$700()Landroid/app/AlertDialog;

    move-result-object v1

    if-nez v1, :cond_3

    .line 600
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 601
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12042f    # @string/credentials_unlock ''

    .line 602
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a    # @android:string/ok

    .line 603
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000    # @android:string/cancel

    .line 604
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 605
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 606
    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->access$702(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 607
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 608
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 611
    :cond_3
    invoke-static {}, Lcom/android/settings/CredentialStorage;->access$700()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    .line 612
    iget-object p1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 613
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$1;)V
    .locals 0

    .line 571
    invoke-direct {p0, p1}, Lcom/android/settings/CredentialStorage$UnlockDialog;-><init>(Lcom/android/settings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 617
    iget-object p1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 618
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 622
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 630
    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    .line 631
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .line 636
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->access$702(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 637
    iget-boolean p1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    if-eqz p1, :cond_3

    .line 638
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    .line 639
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 640
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v0}, Lcom/android/settings/CredentialStorage;->access$800(Lcom/android/settings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 641
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v0}, Lcom/android/settings/CredentialStorage;->access$800(Lcom/android/settings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->getLastError()I

    move-result v0

    .line 642
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v0, v1}, Lcom/android/settings/CredentialStorage;->access$602(Lcom/android/settings/CredentialStorage;I)I

    .line 644
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    const v1, 0x7f120422    # @string/credentials_enabled 'Credential storage is enabled.'

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 646
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 649
    iget-object p1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->access$900(Lcom/android/settings/CredentialStorage;)V

    goto :goto_0

    .line 650
    :cond_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 651
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v0, v1}, Lcom/android/settings/CredentialStorage;->access$602(Lcom/android/settings/CredentialStorage;I)I

    .line 652
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    const v1, 0x7f120423    # @string/credentials_erased 'Credential storage is erased.'

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 654
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 656
    iget-object p1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->access$1000(Lcom/android/settings/CredentialStorage;)V

    goto :goto_0

    .line 657
    :cond_1
    const/16 p1, 0xa

    if-lt v0, p1, :cond_2

    .line 659
    iget-object v1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    sub-int/2addr v0, p1

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/android/settings/CredentialStorage;->access$602(Lcom/android/settings/CredentialStorage;I)I

    .line 660
    iget-object p1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->access$1000(Lcom/android/settings/CredentialStorage;)V

    .line 662
    :cond_2
    :goto_0
    return-void

    .line 664
    :cond_3
    iget-object p1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-virtual {p1}, Lcom/android/settings/CredentialStorage;->finish()V

    .line 665
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 626
    return-void
.end method
