.class public abstract Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "DefaultAppPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;
    }
.end annotation


# instance fields
.field protected mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public bindPreferenceExtra(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 79
    instance-of p4, p3, Lcom/android/settingslib/applications/DefaultAppInfo;

    if-nez p4, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    invoke-static {p5, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 83
    const p2, 0x7f120dcc    # @string/system_app '(System)'

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(I)V

    goto :goto_0

    .line 84
    :cond_1
    check-cast p3, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object p2, p3, Lcom/android/settingslib/applications/DefaultAppInfo;->summary:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 85
    iget-object p2, p3, Lcom/android/settingslib/applications/DefaultAppInfo;->summary:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    :cond_2
    :goto_0
    return-void
.end method

.method protected getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/CharSequence;
    .locals 0

    .line 97
    const/4 p1, 0x0

    return-object p1
.end method

.method protected newConfirmationDialogFragment(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;
    .locals 1

    .line 91
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;-><init>()V

    .line 92
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;->init(Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 93
    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 49
    new-instance v0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 50
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 4

    .line 54
    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->getCandidate(Ljava/lang/String;)Lcom/android/settingslib/widget/CandidateInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V

    goto :goto_0

    .line 59
    :cond_0
    if-eqz v2, :cond_1

    .line 60
    nop

    .line 61
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->newConfirmationDialogFragment(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;

    move-result-object p1

    .line 62
    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "DefaultAppConfirm"

    invoke-virtual {p1, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 64
    :cond_1
    :goto_0
    return-void
.end method

.method protected onRadioButtonConfirmed(Ljava/lang/String;)V
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/util/Pair;

    .line 71
    const/16 v3, 0x341

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->getMetricsCategory()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 68
    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, p1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onRadioButtonConfirmed(Ljava/lang/String;)V

    .line 74
    return-void
.end method
