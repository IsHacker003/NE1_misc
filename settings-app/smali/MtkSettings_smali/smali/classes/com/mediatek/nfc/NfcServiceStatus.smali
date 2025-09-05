.class public Lcom/mediatek/nfc/NfcServiceStatus;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NfcServiceStatus.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditMode:Z

.field private mMenu:Landroid/view/Menu;

.field private mNfcServiceHelper:Lcom/mediatek/nfc/NfcServiceHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private createPreference(Lcom/mediatek/nfcsettingsadapter/ServiceEntry;)Lcom/mediatek/nfc/NfcServicePreference;
    .locals 3

    .line 142
    new-instance v0, Lcom/mediatek/nfc/NfcServicePreference;

    iget-object v1, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/mediatek/nfc/NfcServicePreference;-><init>(Landroid/content/Context;Lcom/mediatek/nfcsettingsadapter/ServiceEntry;)V

    .line 143
    iget-boolean v1, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mEditMode:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v0, p0}, Lcom/mediatek/nfc/NfcServicePreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 145
    invoke-virtual {v0, v2}, Lcom/mediatek/nfc/NfcServicePreference;->setShowCheckbox(Z)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->getWasEnabled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 148
    invoke-virtual {v0, v2}, Lcom/mediatek/nfc/NfcServicePreference;->setEnabled(Z)V

    .line 149
    const p1, 0x7f120961    # @string/nfc_service_summary_enabled 'Enabled'

    invoke-virtual {v0, p1}, Lcom/mediatek/nfc/NfcServicePreference;->setSummary(I)V

    goto :goto_0

    .line 151
    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/mediatek/nfc/NfcServicePreference;->setEnabled(Z)V

    .line 152
    const p1, 0x7f120960    # @string/nfc_service_summary_disabled 'Disabled'

    invoke-virtual {v0, p1}, Lcom/mediatek/nfc/NfcServicePreference;->setSummary(I)V

    .line 155
    :goto_0
    return-object v0
.end method

.method private initPreferences(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mediatek/nfcsettingsadapter/ServiceEntry;",
            ">;)V"
        }
    .end annotation

    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;

    .line 137
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcServiceStatus;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/mediatek/nfc/NfcServiceStatus;->createPreference(Lcom/mediatek/nfcsettingsadapter/ServiceEntry;)Lcom/mediatek/nfc/NfcServicePreference;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 138
    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

.method private refreshUi(Z)V
    .locals 3

    .line 125
    const-string v0, "NfcServiceStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshUi, mEditMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mEditMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", needRestore = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcServiceStatus;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 127
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mNfcServiceHelper:Lcom/mediatek/nfc/NfcServiceHelper;

    invoke-virtual {v0}, Lcom/mediatek/nfc/NfcServiceHelper;->initServiceList()V

    .line 128
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mNfcServiceHelper:Lcom/mediatek/nfc/NfcServiceHelper;

    invoke-virtual {v0}, Lcom/mediatek/nfc/NfcServiceHelper;->sortList()V

    .line 129
    if-eqz p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mNfcServiceHelper:Lcom/mediatek/nfc/NfcServiceHelper;

    invoke-virtual {p1}, Lcom/mediatek/nfc/NfcServiceHelper;->restoreCheckedState()V

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mNfcServiceHelper:Lcom/mediatek/nfc/NfcServiceHelper;

    invoke-virtual {p1}, Lcom/mediatek/nfc/NfcServiceHelper;->getServiceList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mediatek/nfc/NfcServiceStatus;->initPreferences(Ljava/util/List;)V

    .line 133
    return-void
.end method

.method private setEditMode(Z)V
    .locals 1

    .line 119
    iput-boolean p1, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mEditMode:Z

    .line 120
    invoke-direct {p0}, Lcom/mediatek/nfc/NfcServiceStatus;->updateVisibilityOfMenu()V

    .line 121
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mNfcServiceHelper:Lcom/mediatek/nfc/NfcServiceHelper;

    invoke-virtual {v0, p1}, Lcom/mediatek/nfc/NfcServiceHelper;->setEditMode(Z)V

    .line 122
    return-void
.end method

.method private updateVisibilityOfMenu()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mMenu:Landroid/view/Menu;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mMenu:Landroid/view/Menu;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 89
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 90
    iget-boolean v2, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mEditMode:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 91
    iget-boolean v0, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mEditMode:Z

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 93
    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 62
    const/16 v0, 0x46

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcServiceStatus;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mContext:Landroid/content/Context;

    .line 55
    new-instance p1, Lcom/mediatek/nfc/NfcServiceHelper;

    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/mediatek/nfc/NfcServiceHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mNfcServiceHelper:Lcom/mediatek/nfc/NfcServiceHelper;

    .line 56
    const p1, 0x7f150072    # @xml/nfc_service_status 'res/xml/nfc_service_status.xml'

    invoke-virtual {p0, p1}, Lcom/mediatek/nfc/NfcServiceStatus;->addPreferencesFromResource(I)V

    .line 57
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/mediatek/nfc/NfcServiceStatus;->setHasOptionsMenu(Z)V

    .line 58
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 73
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 74
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 75
    const v3, 0x7f0800f4    # @drawable/ic_edit 'res/drawable/ic_edit.xml'

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 76
    const/4 v2, 0x3

    const v3, 0x7f1209fe    # @string/okay 'OK'

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 77
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 78
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 79
    iput-object p1, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mMenu:Landroid/view/Menu;

    .line 80
    invoke-direct {p0}, Lcom/mediatek/nfc/NfcServiceStatus;->updateVisibilityOfMenu()V

    .line 81
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 97
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c    # @android:id/home

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 103
    :pswitch_0
    iget-object p1, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mNfcServiceHelper:Lcom/mediatek/nfc/NfcServiceHelper;

    invoke-virtual {p1}, Lcom/mediatek/nfc/NfcServiceHelper;->saveChange()V

    .line 104
    invoke-direct {p0, v3}, Lcom/mediatek/nfc/NfcServiceStatus;->setEditMode(Z)V

    .line 105
    invoke-direct {p0, v3}, Lcom/mediatek/nfc/NfcServiceStatus;->refreshUi(Z)V

    .line 106
    return v2

    .line 99
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/mediatek/nfc/NfcServiceStatus;->setEditMode(Z)V

    .line 100
    invoke-direct {p0, v3}, Lcom/mediatek/nfc/NfcServiceStatus;->refreshUi(Z)V

    .line 101
    return v2

    .line 108
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mEditMode:Z

    if-eqz v0, :cond_1

    .line 109
    invoke-direct {p0, v3}, Lcom/mediatek/nfc/NfcServiceStatus;->setEditMode(Z)V

    .line 110
    invoke-direct {p0, v3}, Lcom/mediatek/nfc/NfcServiceStatus;->refreshUi(Z)V

    .line 111
    return v2

    .line 115
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    .line 160
    instance-of v0, p1, Lcom/mediatek/nfc/NfcServicePreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 161
    check-cast p1, Lcom/mediatek/nfc/NfcServicePreference;

    .line 162
    invoke-virtual {p1}, Lcom/mediatek/nfc/NfcServicePreference;->isChecked()Z

    move-result v0

    .line 163
    const-string v2, "NfcServiceStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceClick, isChecked ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v2, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mNfcServiceHelper:Lcom/mediatek/nfc/NfcServiceHelper;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/mediatek/nfc/NfcServiceHelper;->setEnabled(Lcom/mediatek/nfc/NfcServicePreference;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mediatek/nfc/NfcServicePreference;->setChecked(Z)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mContext:Landroid/content/Context;

    const v0, 0x7f12095d    # @string/nfc_service_overflow 'Over the limit size'

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 170
    :cond_1
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 1

    .line 67
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/nfc/NfcServiceStatus;->refreshUi(Z)V

    .line 69
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 186
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 187
    const-string v0, "NfcServiceStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState, mEditMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mEditMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v0, "nfcEditMode"

    iget-boolean v1, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mEditMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 189
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mNfcServiceHelper:Lcom/mediatek/nfc/NfcServiceHelper;

    invoke-virtual {v0, p1}, Lcom/mediatek/nfc/NfcServiceHelper;->saveState(Landroid/os/Bundle;)V

    .line 190
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 3

    .line 175
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 176
    if-eqz p1, :cond_0

    .line 177
    const-string v0, "nfcEditMode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mEditMode:Z

    .line 178
    const-string v0, "NfcServiceStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewStateRestored mEditMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mEditMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-boolean v0, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mEditMode:Z

    invoke-direct {p0, v0}, Lcom/mediatek/nfc/NfcServiceStatus;->setEditMode(Z)V

    .line 180
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceStatus;->mNfcServiceHelper:Lcom/mediatek/nfc/NfcServiceHelper;

    invoke-virtual {v0, p1}, Lcom/mediatek/nfc/NfcServiceHelper;->restoreState(Landroid/os/Bundle;)V

    .line 182
    :cond_0
    return-void
.end method
