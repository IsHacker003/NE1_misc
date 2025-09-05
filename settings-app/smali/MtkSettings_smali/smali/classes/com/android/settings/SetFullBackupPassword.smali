.class public Lcom/android/settings/SetFullBackupPassword;
.super Landroid/app/Activity;
.source "SetFullBackupPassword.java"


# instance fields
.field mBackupManager:Landroid/app/backup/IBackupManager;

.field mButtonListener:Landroid/view/View$OnClickListener;

.field mCancel:Landroid/widget/Button;

.field mConfirmNewPw:Landroid/widget/TextView;

.field mCurrentPw:Landroid/widget/TextView;

.field mNewPw:Landroid/widget/TextView;

.field mSet:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Lcom/android/settings/SetFullBackupPassword$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SetFullBackupPassword$1;-><init>(Lcom/android/settings/SetFullBackupPassword;)V

    iput-object v0, p0, Lcom/android/settings/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SetFullBackupPassword;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SetFullBackupPassword;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SetFullBackupPassword;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1, p2}, Landroid/app/backup/IBackupManager;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 101
    :catch_0
    move-exception p1

    .line 102
    const-string p1, "SetFullBackupPassword"

    const-string p2, "Unable to communicate with backup manager"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const-string p1, "backup"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/SetFullBackupPassword;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 85
    const p1, 0x7f0d0140    # @layout/set_backup_pw 'res/layout/set_backup_pw.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/SetFullBackupPassword;->setContentView(I)V

    .line 87
    const p1, 0x7f0a00e2    # @id/current_backup_pw

    invoke-virtual {p0, p1}, Lcom/android/settings/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/SetFullBackupPassword;->mCurrentPw:Landroid/widget/TextView;

    .line 88
    const p1, 0x7f0a0225    # @id/new_backup_pw

    invoke-virtual {p0, p1}, Lcom/android/settings/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/SetFullBackupPassword;->mNewPw:Landroid/widget/TextView;

    .line 89
    const p1, 0x7f0a00cc    # @id/confirm_new_backup_pw

    invoke-virtual {p0, p1}, Lcom/android/settings/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/SetFullBackupPassword;->mConfirmNewPw:Landroid/widget/TextView;

    .line 91
    const p1, 0x7f0a0063    # @id/backup_pw_cancel_button

    invoke-virtual {p0, p1}, Lcom/android/settings/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/SetFullBackupPassword;->mCancel:Landroid/widget/Button;

    .line 92
    const p1, 0x7f0a0064    # @id/backup_pw_set_button

    invoke-virtual {p0, p1}, Lcom/android/settings/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/SetFullBackupPassword;->mSet:Landroid/widget/Button;

    .line 94
    iget-object p1, p0, Lcom/android/settings/SetFullBackupPassword;->mCancel:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object p1, p0, Lcom/android/settings/SetFullBackupPassword;->mSet:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method
