.class public Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;
.super Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;
.source "BluetoothDeviceRenamePreferenceController.java"


# instance fields
.field private mFragment:Landroid/app/Fragment;

.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Ljava/lang/String;)V

    .line 48
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 42
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->mFragment:Landroid/app/Fragment;

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->mContext:Landroid/content/Context;

    const/16 v2, 0xa1

    new-array v0, v0, [Landroid/util/Pair;

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 76
    invoke-static {}, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->newInstance()Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->mFragment:Landroid/app/Fragment;

    .line 77
    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "LocalAdapterName"

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 78
    const/4 p1, 0x1

    return p1

    .line 81
    :cond_0
    return v0
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->mFragment:Landroid/app/Fragment;

    .line 58
    return-void
.end method

.method protected updatePreferenceState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 64
    return-void
.end method
