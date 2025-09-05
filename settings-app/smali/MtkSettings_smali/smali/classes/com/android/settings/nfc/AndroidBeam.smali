.class public Lcom/android/settings/nfc/AndroidBeam;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "AndroidBeam.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mBeamDisallowedByBase:Z

.field private mBeamDisallowedByOnlyAdmin:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 132
    const/16 v0, 0x45

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 88
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    .line 90
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 91
    iget-boolean v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    goto :goto_1

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 100
    :goto_1
    const v0, 0x7f1200ee    # @string/android_beam_settings_title 'Android Beam'

    invoke-virtual {p1, v0}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    .line 101
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 54
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/AndroidBeam;->setHasOptionsMenu(Z)V

    .line 55
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 59
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object p2

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 60
    const v1, 0x7f1206dd    # @string/help_uri_beam ''

    invoke-static {p2, p1, v1, v0}, Lcom/android/settingslib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 67
    nop

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const-string v0, "no_outgoing_beam"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 67
    invoke-static {p3, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p3

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "no_outgoing_beam"

    .line 71
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 70
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    .line 72
    iget-boolean v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 73
    new-instance p1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    const-string p2, "no_outgoing_beam"

    .line 74
    invoke-virtual {p1, p2, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 75
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    .line 76
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 78
    :cond_0
    const p3, 0x7f0d002c    # @layout/android_beam 'res/layout/android_beam.xml'

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/AndroidBeam;->mView:Landroid/view/View;

    .line 79
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeam;->mView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 105
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onDestroyView()V

    .line 106
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 113
    :cond_1
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    .line 117
    nop

    .line 118
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 119
    if-eqz p2, :cond_0

    .line 120
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result p1

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result p1

    .line 124
    :goto_0
    if-eqz p1, :cond_1

    .line 125
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 128
    return-void
.end method
