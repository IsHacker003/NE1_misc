.class public Lcom/android/settings/applications/manageapplications/ResetAppsHelper;
.super Ljava/lang/Object;
.source "ResetAppsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final mAom:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mIPm:Landroid/content/pm/IPackageManager;

.field private final mNm:Landroid/app/INotificationManager;

.field private final mNpm:Landroid/net/NetworkPolicyManager;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mResetDialog:Landroid/app/AlertDialog;

.field private final mWvus:Landroid/webkit/IWebViewUpdateService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 60
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    .line 61
    const-string v0, "notification"

    .line 62
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mNm:Landroid/app/INotificationManager;

    .line 63
    const-string v0, "webviewupdate"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mWvus:Landroid/webkit/IWebViewUpdateService;

    .line 64
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mNpm:Landroid/net/NetworkPolicyManager;

    .line 65
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mAom:Landroid/app/AppOpsManager;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/INotificationManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mNm:Landroid/app/INotificationManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;Ljava/lang/String;)Z
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->isNonEnableableFallback(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/pm/IPackageManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/AppOpsManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mAom:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mNpm:Landroid/net/NetworkPolicyManager;

    return-object p0
.end method

.method private isNonEnableableFallback(Ljava/lang/String;)Z
    .locals 1

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mWvus:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v0, p1}, Landroid/webkit/IWebViewUpdateService;->isFallbackPackage(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 153
    :catch_0
    move-exception p1

    .line 154
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method buildResetDialog()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120b25    # @string/reset_app_preferences_title 'Reset app preferences?'

    .line 90
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120b24    # @string/reset_app_preferences_desc 'This will reset all preferences for:\n\n  1. Disabled apps\n  2. Disabled app notifications\n  3. Defaul ...'

    .line 91
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120b23    # @string/reset_app_preferences_button 'Reset apps'

    .line 92
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120361    # @string/cancel 'Cancel'

    const/4 v2, 0x0

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetDialog:Landroid/app/AlertDialog;

    .line 97
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 108
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetDialog:Landroid/app/AlertDialog;

    if-eq p2, p1, :cond_0

    .line 109
    return-void

    .line 111
    :cond_0
    new-instance p1, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;-><init>(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 102
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetDialog:Landroid/app/AlertDialog;

    .line 104
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 69
    if-eqz p1, :cond_0

    const-string v0, "resetDialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->buildResetDialog()V

    .line 72
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "resetDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetDialog:Landroid/app/AlertDialog;

    .line 85
    :cond_0
    return-void
.end method
