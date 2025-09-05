.class public Lcom/android/settings/fuelgauge/HighPowerDetail;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "HighPowerDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mDefaultOn:Z

.field mIsEnabled:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mLabel:Ljava/lang/CharSequence;

.field private mOptionOff:Landroid/widget/Checkable;

.field private mOptionOn:Landroid/widget/Checkable;

.field mPackageName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPackageUid:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 0

    .line 171
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .line 175
    invoke-static {p0}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    move-result-object v0

    .line 176
    invoke-virtual {v0, p1}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isSysWhitelisted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p1, 0x7f12072a    # @string/high_power_system 'Battery optimization not available'

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f120727    # @string/high_power_on 'Not optimized'

    goto :goto_0

    .line 178
    :cond_1
    const p1, 0x7f120726    # @string/high_power_off 'Optimizing battery use'

    .line 176
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static logSpecialPermissionChange(ZLjava/lang/String;Landroid/content/Context;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 155
    if-eqz p0, :cond_0

    const/16 p0, 0x2fd

    goto :goto_0

    .line 156
    :cond_0
    const/16 p0, 0x2fc

    .line 157
    :goto_0
    invoke-static {p2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {v0, p2, p0, p1, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 159
    return-void
.end method

.method public static show(Landroid/app/Fragment;ILjava/lang/String;I)V
    .locals 3

    .line 182
    new-instance v0, Lcom/android/settings/fuelgauge/HighPowerDetail;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/HighPowerDetail;-><init>()V

    .line 183
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 184
    const-string v2, "package"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string p2, "uid"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/HighPowerDetail;->setArguments(Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {v0, p0, p3}, Lcom/android/settings/fuelgauge/HighPowerDetail;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 188
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-class p1, Lcom/android/settings/fuelgauge/HighPowerDetail;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/fuelgauge/HighPowerDetail;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method private updateViews()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mOptionOn:Landroid/widget/Checkable;

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mOptionOff:Landroid/widget/Checkable;

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 122
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 64
    const/16 v0, 0x21c

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 137
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 138
    iget-boolean p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    .line 139
    iget-object p2, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result p2

    .line 140
    if-eq p1, p2, :cond_1

    .line 141
    iget-object p2, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->logSpecialPermissionChange(ZLjava/lang/String;Landroid/content/Context;)V

    .line 142
    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget p2, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageUid:I

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->setForceAppStandby(ILjava/lang/String;I)V

    .line 145
    iget-object p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    iget-object p2, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->addApp(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    iget-object p2, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->removeApp(Ljava/lang/String;)V

    .line 151
    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mOptionOn:Landroid/widget/Checkable;

    if-ne p1, v0, :cond_0

    .line 127
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    .line 128
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->updateViews()V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mOptionOff:Landroid/widget/Checkable;

    if-ne p1, v0, :cond_1

    .line 130
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    .line 131
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->updateViews()V

    .line 133
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 72
    invoke-static {p1}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageUid:I

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 78
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_0

    .line 79
    :catch_0
    move-exception p1

    .line 80
    iget-object p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mLabel:Ljava/lang/CharSequence;

    .line 82
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "default_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mDefaultOn:Z

    .line 83
    iget-boolean p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mDefaultOn:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    .line 84
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 101
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mLabel:Ljava/lang/CharSequence;

    .line 102
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 103
    const v0, 0x7f120361    # @string/cancel 'Cancel'

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 104
    const v0, 0x7f0d00aa    # @layout/ignore_optimizations_content 'res/layout/ignore_optimizations_content.xml'

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 105
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isSysWhitelisted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const v0, 0x7f12059a    # @string/done 'Done'

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 163
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    .line 165
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getTargetRequestCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 168
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 113
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onStart()V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0a019e    # @id/ignore_on

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fuelgauge/HighPowerDetail;->setup(Landroid/view/View;Z)Landroid/widget/Checkable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mOptionOn:Landroid/widget/Checkable;

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0a019d    # @id/ignore_off

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fuelgauge/HighPowerDetail;->setup(Landroid/view/View;Z)Landroid/widget/Checkable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mOptionOff:Landroid/widget/Checkable;

    .line 116
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->updateViews()V

    .line 117
    return-void
.end method

.method public setup(Landroid/view/View;Z)Landroid/widget/Checkable;
    .locals 2

    .line 87
    const v0, 0x1020016    # @android:id/title

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 88
    const v1, 0x7f120734    # @string/ignore_optimizations_on 'Don’t optimize'

    goto :goto_0

    :cond_0
    const v1, 0x7f120732    # @string/ignore_optimizations_off 'Optimize'

    .line 87
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 89
    const v0, 0x1020010    # @android:id/summary

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 90
    const v1, 0x7f120735    # @string/ignore_optimizations_on_desc 'May drain your battery more quickly. App will no longer be restricted from using background battery.'

    goto :goto_1

    :cond_1
    const v1, 0x7f120733    # @string/ignore_optimizations_off_desc 'Recommended for better battery life'

    .line 89
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 92
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isSysWhitelisted(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 94
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 96
    :cond_2
    check-cast p1, Landroid/widget/Checkable;

    return-object p1
.end method
