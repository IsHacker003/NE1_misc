.class public Lcom/android/settings/users/UserDetailsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserDetailsSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCheckDeleteComplete:Ljava/lang/Runnable;

.field private mDefaultGuestRestrictions:Landroid/os/Bundle;

.field private mDeletingUserDialog:Landroid/app/ProgressDialog;

.field private mGuestUser:Z

.field private mHandler:Landroid/os/Handler;

.field private mPhonePref:Landroid/support/v14/preference/SwitchPreference;

.field private mRemoveUserPref:Landroid/support/v7/preference/Preference;

.field private mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserInfo:Landroid/content/pm/UserInfo;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/android/settings/users/UserDetailsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/users/UserDetailsSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mHandler:Landroid/os/Handler;

    .line 88
    new-instance v0, Lcom/android/settings/users/UserDetailsSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserDetailsSettings$1;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mCheckDeleteComplete:Ljava/lang/Runnable;

    .line 110
    new-instance v0, Lcom/android/settings/users/UserDetailsSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserDetailsSettings$2;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/users/UserDetailsSettings;)Landroid/content/pm/UserInfo;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/users/UserDetailsSettings;)Landroid/os/UserManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/users/UserDetailsSettings;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/users/UserDetailsSettings;->dismissDialogAndFinish()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/users/UserDetailsSettings;)Landroid/os/Handler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private dismissDeleteUserDialog()V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 314
    :cond_0
    return-void
.end method

.method private dismissDialogAndFinish()V
    .locals 0

    .line 317
    invoke-direct {p0}, Lcom/android/settings/users/UserDetailsSettings;->dismissDeleteUserDialog()V

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->finish()V

    .line 319
    return-void
.end method

.method private showDeleteUserDialog()V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    .line 300
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1208bc    # @string/master_clear_progress_text 'Please wait...'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 308
    :cond_1
    return-void
.end method


# virtual methods
.method enableCallsAndSms(Z)V
    .locals 5

    .line 216
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 217
    iget-boolean v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUser:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    const-string v2, "no_outgoing_calls"

    xor-int/2addr p1, v1

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 220
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    const-string v0, "no_sms"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 221
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V

    .line 226
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p1

    .line 227
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 228
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 231
    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    .line 232
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 231
    invoke-virtual {v3, v2, v4, v0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 233
    goto :goto_1

    .line 235
    :cond_0
    goto :goto_0

    .line 236
    :cond_1
    goto :goto_2

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 238
    iget-object v2, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v3, "no_outgoing_calls"

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v3, v4, v0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 240
    iget-object v2, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v3, "no_sms"

    xor-int/2addr p1, v1

    invoke-virtual {v2, v3, p1, v0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 242
    :goto_2
    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    .line 276
    packed-switch p1, :pswitch_data_0

    .line 284
    const/4 p1, 0x0

    return p1

    .line 282
    :pswitch_0
    const/16 p1, 0x251

    return p1

    .line 280
    :pswitch_1
    const/16 p1, 0x250

    return p1

    .line 278
    :pswitch_2
    const/16 p1, 0x24f

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 77
    const/16 v0, 0x62

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 123
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 126
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    .line 128
    const v0, 0x7f1500b2    # @xml/user_details_settings 'res/xml/user_details_settings.xml'

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->addPreferencesFromResource(I)V

    .line 129
    const-string v0, "enable_calling"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroid/support/v14/preference/SwitchPreference;

    .line 130
    const-string v0, "remove_user"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroid/support/v7/preference/Preference;

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "guest_user"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUser:Z

    .line 134
    iget-boolean v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUser:Z

    if-nez v0, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 137
    if-eq v0, v2, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    .line 141
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v3, "no_outgoing_calls"

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 144
    goto :goto_0

    .line 138
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Arguments to this fragment must contain the user id"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_1
    const-string v0, "remove_user"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->removePreference(Ljava/lang/String;)Z

    .line 148
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f120ef7    # @string/user_enable_calling 'Turn on phone calls'

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    .line 150
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    const-string v2, "no_outgoing_calls"

    .line 151
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 150
    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 153
    :goto_0
    const-string v0, "no_remove_user"

    .line 154
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 153
    invoke-static {p1, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 155
    const-string p1, "remove_user"

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->removePreference(Ljava/lang/String;)Z

    .line 157
    :cond_2
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 158
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 247
    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 248
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported dialogId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserDetailsSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserDetailsSettings$5;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-static {p1, v0}, Lcom/android/settings/users/UserDialogs;->createEnablePhoneCallsAndSmsDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 257
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserDetailsSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserDetailsSettings$4;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-static {p1, v0}, Lcom/android/settings/users/UserDialogs;->createEnablePhoneCallsDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 250
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    new-instance v1, Lcom/android/settings/users/UserDetailsSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/users/UserDetailsSettings$3;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-static {p1, v0, v1}, Lcom/android/settings/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 189
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 190
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 206
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 207
    iget-boolean p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUser:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    .line 208
    :cond_0
    const/4 p1, 0x3

    .line 207
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->showDialog(I)V

    .line 209
    return p2

    .line 211
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/settings/users/UserDetailsSettings;->enableCallsAndSms(Z)V

    .line 212
    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 195
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 198
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->showDialog(I)V

    .line 199
    return p1

    .line 196
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Only admins can remove a user"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 201
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 6

    .line 162
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 164
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 167
    iget-boolean v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUser:Z

    if-nez v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 170
    if-nez v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/android/settings/users/UserDetailsSettings;->dismissDialogAndFinish()V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    invoke-direct {p0}, Lcom/android/settings/users/UserDetailsSettings;->showDeleteUserDialog()V

    .line 176
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mCheckDeleteComplete:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    :cond_1
    :goto_0
    goto :goto_1

    .line 179
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/users/UserDetailsSettings;->dismissDialogAndFinish()V

    .line 183
    :cond_3
    :goto_1
    return-void
.end method

.method removeUser()V
    .locals 2

    .line 290
    invoke-direct {p0}, Lcom/android/settings/users/UserDetailsSettings;->showDeleteUserDialog()V

    .line 291
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    .line 294
    return-void
.end method
