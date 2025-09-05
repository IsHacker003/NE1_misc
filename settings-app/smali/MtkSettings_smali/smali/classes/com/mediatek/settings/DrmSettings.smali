.class public Lcom/mediatek/settings/DrmSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DrmSettings.java"


# static fields
.field private static sClient:Landroid/drm/DrmManagerClient;

.field private static sPreferenceReset:Landroid/support/v7/preference/Preference;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/drm/DrmManagerClient;
    .locals 1

    .line 19
    sget-object v0, Lcom/mediatek/settings/DrmSettings;->sClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method static synthetic access$002(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;
    .locals 0

    .line 19
    sput-object p0, Lcom/mediatek/settings/DrmSettings;->sClient:Landroid/drm/DrmManagerClient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/DrmSettings;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/mediatek/settings/DrmSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200()Landroid/support/v7/preference/Preference;
    .locals 1

    .line 19
    sget-object v0, Lcom/mediatek/settings/DrmSettings;->sPreferenceReset:Landroid/support/v7/preference/Preference;

    return-object v0
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 0

    .line 37
    const/16 p1, 0x51

    return p1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 32
    const/16 v0, 0x51

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const p1, 0x7f150057    # @xml/drm_settings 'res/xml/drm_settings.xml'

    invoke-virtual {p0, p1}, Lcom/mediatek/settings/DrmSettings;->addPreferencesFromResource(I)V

    .line 53
    const-string p1, "drm_settings"

    invoke-virtual {p0, p1}, Lcom/mediatek/settings/DrmSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    sput-object p1, Lcom/mediatek/settings/DrmSettings;->sPreferenceReset:Landroid/support/v7/preference/Preference;

    .line 54
    invoke-virtual {p0}, Lcom/mediatek/settings/DrmSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/DrmSettings;->mContext:Landroid/content/Context;

    .line 55
    new-instance p1, Landroid/drm/DrmManagerClient;

    iget-object v0, p0, Lcom/mediatek/settings/DrmSettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/mediatek/settings/DrmSettings;->sClient:Landroid/drm/DrmManagerClient;

    .line 56
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .line 60
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mediatek/settings/DrmSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-eq p1, v2, :cond_0

    .line 91
    return-object v1

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/DrmSettings;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f1205a7    # @string/drm_reset_dialog_msg 'This operation will delete all the licenses on this device. Continue?'

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {p0}, Lcom/mediatek/settings/DrmSettings;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f1205aa    # @string/drm_settings_title 'DRM reset'

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 68
    const p1, 0x1080027    # @android:drawable/ic_dialog_alert

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 69
    const p1, 0x104000a    # @android:string/ok

    new-instance v2, Lcom/mediatek/settings/DrmSettings$1;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/DrmSettings$1;-><init>(Lcom/mediatek/settings/DrmSettings;)V

    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 87
    const/high16 p1, 0x1040000    # @android:string/cancel

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 89
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 105
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/settings/DrmSettings;->sClient:Landroid/drm/DrmManagerClient;

    .line 107
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 97
    sget-object v0, Lcom/mediatek/settings/DrmSettings;->sPreferenceReset:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 98
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/DrmSettings;->showDialog(I)V

    .line 100
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method protected showDialog(I)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/mediatek/settings/DrmSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "DrmSettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/mediatek/settings/DrmSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 45
    iget-object v0, p0, Lcom/mediatek/settings/DrmSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/mediatek/settings/DrmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 46
    return-void
.end method
