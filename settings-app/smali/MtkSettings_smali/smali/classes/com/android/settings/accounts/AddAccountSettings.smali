.class public Lcom/android/settings/accounts/AddAccountSettings;
.super Landroid/app/Activity;
.source "AddAccountSettings.java"


# instance fields
.field private mAddAccountCallbackCalled:Z

.field private mAddAccountCalled:Z

.field private final mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mPreventEmptyActivity:Z

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    new-instance v0, Lcom/android/settings/accounts/AddAccountSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/AddAccountSettings$1;-><init>(Lcom/android/settings/accounts/AddAccountSettings;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 134
    iput-boolean v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountCallbackCalled:Z

    .line 135
    iput-boolean v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mPreventEmptyActivity:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/accounts/AddAccountSettings;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountCallbackCalled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/accounts/AddAccountSettings;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/os/UserHandle;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method private addAccount(Ljava/lang/String;)V
    .locals 9

    .line 261
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 271
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 272
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "SHOULDN\'T RESOLVE!"

    const-string v3, "SHOULDN\'T RESOLVE!"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 273
    const-string v1, "SHOULDN\'T RESOLVE!"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v1, "SHOULDN\'T RESOLVE!"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    .line 277
    const-string v0, "pendingIntent"

    iget-object v1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 278
    const-string v0, "hasMultipleUsers"

    invoke-static {p0}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 279
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/accounts/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v8, p0, Lcom/android/settings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/accounts/AccountManager;->addAccountAsUser(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    .line 288
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 289
    return-void
.end method

.method private requestChooseAccount()V
    .locals 4

    .line 245
    nop

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 247
    nop

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account_types"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 249
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/Settings$ChooseAccountActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    if-eqz v0, :cond_0

    .line 251
    const-string v3, "authorities"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    :cond_0
    if-eqz v1, :cond_1

    .line 254
    const-string v0, "account_types"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    :cond_1
    const-string v0, "android.intent.extra.USER"

    iget-object v1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 257
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/accounts/AddAccountSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 258
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 206
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 208
    :pswitch_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/android/settings/accounts/AddAccountSettings;->requestChooseAccount()V

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    .line 213
    goto :goto_0

    .line 227
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/settings/accounts/AddAccountSettings;->setResult(I)V

    .line 228
    iget-object p1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_1

    .line 229
    iget-object p1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->cancel()V

    .line 230
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .line 215
    :pswitch_2
    if-nez p2, :cond_3

    .line 216
    if-eqz p3, :cond_2

    .line 217
    iget-object p1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0, p3, p1}, Lcom/android/settings/accounts/AddAccountSettings;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 219
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/settings/accounts/AddAccountSettings;->setResult(I)V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    .line 221
    return-void

    .line 224
    :cond_3
    const-string p1, "selected_account"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AddAccountSettings;->addAccount(Ljava/lang/String;)V

    .line 225
    nop

    .line 235
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    if-eqz p1, :cond_0

    .line 144
    const-string v0, "AddAccountCalled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 145
    const-string p1, "AddAccountSettings"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "AddAccountSettings"

    const-string v0, "restored"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    const-string p1, "user"

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AddAccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 149
    invoke-static {v0, p1, v1, v2}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    .line 151
    const-string v0, "no_modify_accounts"

    iget-object v1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    const p1, 0x7f120ed7    # @string/user_cannot_add_accounts_message 'Restricted profiles cannot add accounts'

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    .line 156
    return-void

    .line 158
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    .line 161
    return-void

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    .line 165
    return-void

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 168
    invoke-direct {p0}, Lcom/android/settings/accounts/AddAccountSettings;->requestChooseAccount()V

    goto :goto_0

    .line 172
    :cond_4
    new-instance p1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {p1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 173
    const/4 v0, 0x3

    const v1, 0x7f120e5e    # @string/unlock_set_unlock_launch_picker_title 'Screen lock'

    .line 174
    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AddAccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    .line 176
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 173
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result p1

    if-nez p1, :cond_5

    .line 177
    invoke-direct {p0}, Lcom/android/settings/accounts/AddAccountSettings;->requestChooseAccount()V

    .line 180
    :cond_5
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 186
    iget-boolean v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountCallbackCalled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mPreventEmptyActivity:Z

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "AddAccountSettings"

    const-string v1, "finish empty activity"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    .line 191
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 239
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 240
    const-string v0, "AddAccountCalled"

    iget-boolean v1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 241
    const-string p1, "AddAccountSettings"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "AddAccountSettings"

    const-string v0, "saved"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 195
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 197
    iget-boolean v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountCallbackCalled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mPreventEmptyActivity:Z

    if-nez v0, :cond_0

    .line 198
    const-string v0, "AddAccountSettings"

    const-string v1, "prepare to prevent empty activity"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mPreventEmptyActivity:Z

    .line 202
    :cond_0
    return-void
.end method
