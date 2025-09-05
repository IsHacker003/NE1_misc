.class public Lcom/android/settings/print/PrintSettingPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "PrintSettingPreferenceController.java"

# interfaces
.implements Landroid/print/PrintManager$PrintJobStateChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final KEY_PRINTING_SETTINGS:Ljava/lang/String; = "connected_device_printing"


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private final mPrintManager:Landroid/print/PrintManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    const-string v0, "connected_device_printing"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 55
    const-string v0, "print"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/print/PrintManager;->getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPrintManager:Landroid/print/PrintManager;

    .line 57
    return-void
.end method

.method static shouldShowToUser(Landroid/print/PrintJobInfo;)Z
    .locals 1

    .line 129
    invoke-virtual {p0}, Landroid/print/PrintJobInfo;->getState()I

    move-result p0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 137
    const/4 p0, 0x0

    return p0

    .line 134
    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 69
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.print"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 61
    :goto_0
    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 6

    .line 95
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v0}, Landroid/print/PrintManager;->getPrintJobs()Ljava/util/List;

    move-result-object v0

    .line 97
    nop

    .line 98
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 99
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrintJob;

    .line 100
    invoke-virtual {v3}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/print/PrintSettingPreferenceController;->shouldShowToUser(Landroid/print/PrintJobInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 103
    :cond_0
    goto :goto_0

    .line 106
    :cond_1
    move v2, v1

    :cond_2
    const/4 v0, 0x1

    if-lez v2, :cond_3

    .line 107
    iget-object v3, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10002e    # @plurals/print_jobs_summary

    new-array v0, v0, [Ljava/lang/Object;

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    .line 107
    invoke-virtual {v3, v4, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 110
    :cond_3
    iget-object v2, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPrintManager:Landroid/print/PrintManager;

    .line 111
    invoke-virtual {v2, v0}, Landroid/print/PrintManager;->getPrintServices(I)Ljava/util/List;

    move-result-object v2

    .line 112
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 115
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 116
    iget-object v3, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10002f    # @plurals/print_settings_summary

    new-array v0, v0, [Ljava/lang/Object;

    .line 117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    .line 116
    invoke-virtual {v3, v4, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 113
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120a8e    # @string/print_settings_summary_no_service 'Off'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/print/PrintSettingPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 84
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v0, p0}, Landroid/print/PrintManager;->addPrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 74
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v0, p0}, Landroid/print/PrintManager;->removePrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 79
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 89
    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    const-string v0, "no_printing"

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 91
    return-void
.end method
