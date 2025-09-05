.class public Lcom/android/settings/users/OwnerInfoSettings;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfo:Landroid/widget/EditText;

.field private mUserId:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/android/settings/users/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mView:Landroid/view/View;

    const v2, 0x7f0a024d    # @id/owner_info_edit_text

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 73
    :cond_0
    return-void
.end method

.method public static show(Landroid/app/Fragment;)V
    .locals 2

    .line 89
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    new-instance v0, Lcom/android/settings/users/OwnerInfoSettings;

    invoke-direct {v0}, Lcom/android/settings/users/OwnerInfoSettings;-><init>()V

    .line 92
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/users/OwnerInfoSettings;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 93
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v1, "ownerInfo"

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/users/OwnerInfoSettings;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 94
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 98
    const/16 v0, 0x213

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 77
    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 79
    iget-object p2, p0, Lcom/android/settings/users/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mUserId:I

    invoke-virtual {p2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(ZI)V

    .line 80
    iget-object p2, p0, Lcom/android/settings/users/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/users/OwnerInfoSettings;->mUserId:I

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/users/OwnerInfoSettings;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/security/OwnerInfoPreferenceController$OwnerInfoCallback;

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/users/OwnerInfoSettings;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/security/OwnerInfoPreferenceController$OwnerInfoCallback;

    invoke-interface {p1}, Lcom/android/settings/security/OwnerInfoPreferenceController$OwnerInfoCallback;->onOwnerInfoUpdated()V

    .line 86
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mUserId:I

    .line 50
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/users/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 51
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/users/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d00d9    # @layout/ownerinfo 'res/layout/ownerinfo.xml'

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mView:Landroid/view/View;

    .line 56
    invoke-direct {p0}, Lcom/android/settings/users/OwnerInfoSettings;->initView()V

    .line 57
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/users/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    const v0, 0x7f120a10    # @string/owner_info_settings_title 'Lock screen message'

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/users/OwnerInfoSettings;->mView:Landroid/view/View;

    .line 59
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 60
    const v0, 0x7f120b80    # @string/save 'Save'

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 61
    const v0, 0x7f120361    # @string/cancel 'Cancel'

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 57
    return-object p1
.end method
