.class public Lcom/android/settings/deviceinfo/PublicVolumeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PublicVolumeSettings.java"


# instance fields
.field private mDisk:Landroid/os/storage/DiskInfo;

.field private mFormatPrivate:Landroid/support/v7/preference/Preference;

.field private mFormatPublic:Landroid/support/v7/preference/Preference;

.field private mIsPermittedToAdopt:Z

.field private mMount:Landroid/support/v7/preference/Preference;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

.field private mUnmount:Landroid/widget/Button;

.field private final mUnmountListener:Landroid/view/View$OnClickListener;

.field private mVolume:Landroid/os/storage/VolumeInfo;

.field private mVolumeId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 236
    new-instance v0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;-><init>(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmountListener:Landroid/view/View$OnClickListener;

    .line 243
    new-instance v0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings$2;-><init>(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/VolumeInfo;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settings/deviceinfo/PublicVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolumeId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/StorageManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object p0
.end method

.method private addPreference(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 192
    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 194
    return-void
.end method

.method private buildAction(I)Landroid/support/v7/preference/Preference;
    .locals 2

    .line 197
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 198
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 199
    return-object v0
.end method

.method private isVolumeValid()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 74
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 79
    const/16 v0, 0x2a

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 132
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 135
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->isVolumeValid()Z

    move-result p1

    if-nez p1, :cond_0

    .line 136
    return-void

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 140
    const v0, 0x7f0701bb    # @dimen/unmount_button_padding '8.0dp'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getButtonBar()Landroid/view/ViewGroup;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 144
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 145
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmount:Landroid/widget/Button;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 88
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 89
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mIsPermittedToAdopt:Z

    .line 91
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 93
    const-string p1, "android.provider.action.DOCUMENT_ROOT_SETTINGS"

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 96
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getRootId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 97
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 100
    if-eqz p1, :cond_2

    .line 101
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 105
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->isVolumeValid()Z

    move-result p1

    if-nez p1, :cond_3

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 107
    return-void

    .line 110
    :cond_3
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    .line 111
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolumeId:Ljava/lang/String;

    .line 115
    const p1, 0x7f15004e    # @xml/device_info_storage_volume 'res/xml/device_info_storage_volume.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->addPreferencesFromResource(I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 118
    new-instance p1, Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    .line 120
    const p1, 0x7f120d35    # @string/storage_menu_mount 'Mount'

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->buildAction(I)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mMount:Landroid/support/v7/preference/Preference;

    .line 121
    new-instance p1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmount:Landroid/widget/Button;

    .line 122
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmount:Landroid/widget/Button;

    const v0, 0x7f120d38    # @string/storage_menu_unmount 'Eject'

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 123
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmount:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmountListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const p1, 0x7f120d2f    # @string/storage_menu_format 'Format'

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->buildAction(I)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mFormatPublic:Landroid/support/v7/preference/Preference;

    .line 125
    iget-boolean p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mIsPermittedToAdopt:Z

    if-eqz p1, :cond_4

    .line 126
    const p1, 0x7f120d30    # @string/storage_menu_format_private 'Format as internal'

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->buildAction(I)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mFormatPrivate:Landroid/support/v7/preference/Preference;

    .line 128
    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 219
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 220
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 221
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mMount:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 226
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mFormatPublic:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->showPublic(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mFormatPrivate:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->showPrivate(Landroid/app/Activity;Ljava/lang/String;)V

    .line 233
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 204
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 207
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 208
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->isVolumeValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 210
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->update()V

    .line 215
    return-void
.end method

.method public update()V
    .locals 11

    .line 151
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->isVolumeValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 153
    return-void

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 163
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->addPreference(Landroid/support/v7/preference/Preference;)V

    .line 166
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v3

    .line 168
    invoke-virtual {v1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v5

    .line 169
    sub-long v5, v3, v5

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v5, v6, v2}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v1

    .line 172
    iget-object v7, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const v8, 0x7f120d45    # @string/storage_size_large '^1<small><small> ^2</small></small>'

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/CharSequence;

    iget-object v10, v1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v10, v9, v2

    iget-object v1, v1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const v7, 0x7f120d53    # @string/storage_volume_used 'Used of %1$s'

    new-array v8, v10, [Ljava/lang/Object;

    .line 175
    invoke-static {v0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    .line 174
    invoke-virtual {p0, v7, v8}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setPercent(JJ)V

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    if-nez v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mMount:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->addPreference(Landroid/support/v7/preference/Preference;)V

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getButtonBar()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mFormatPublic:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->addPreference(Landroid/support/v7/preference/Preference;)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mIsPermittedToAdopt:Z

    if-eqz v0, :cond_4

    .line 187
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mFormatPrivate:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->addPreference(Landroid/support/v7/preference/Preference;)V

    .line 189
    :cond_4
    return-void
.end method
